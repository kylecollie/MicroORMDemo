using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using DataLayer;
using FluentAssertions;

namespace DataLayer.Tests
{
    [TestClass]
    public class ContactRepositoryTests
    {
        [TestMethod]
        public void Get_all_should_return_6_results()
        {
            // arrange
            IContactRepository repository = CreateRepository();

            // act
            var contacts = repository.GetAll();

            // assert
            contacts.Should().NotBeNull();
            contacts.Count.Should().Be(6);
        }

        static int id;

        [TestMethod]
        public void Insert_should_assign_identity_to_new_entity()
        {
            // arrange
            IContactRepository repository = CreateRepository();
            var contact = new Contact
            {
                FirstName = "Joe",
                LastName = "Blow",
                Email = "joe.blow@ogmail.com",
                Company = "Microsoft",
                Title = "Developer"
            };

            // act
            repository.Add(contact);

            // assert
            contact.Id.Should().NotBe(0, "because identity should have been assigned by the DB");
            Console.WriteLine("New ID: " + contact.Id);
            id = contact.Id;
        }

        [TestMethod]
        public void Find_should_retrieve_existing_entity()
        {
            // arrange
            IContactRepository repository = CreateRepository();

            // act
            var contact = repository.Find(id);

            // assert
            contact.Should().NotBeNull();
            contact.Id.Should().Be(id);
            contact.FirstName.Should().Be("Joe");
            contact.LastName.Should().Be("Blow");
            contact.Email.Should().Be("joe.blow@ogmail.com");
            contact.Company.Should().Be("Microsoft");
            contact.Title.Should().Be("Developer");
        }

        [TestMethod]
        public void Modify_should_update_existing_entity()
        {
            // arrange
            IContactRepository repository = CreateRepository();

            // act
            var contact = repository.Find(id);
            contact.FirstName = "Bob";
            repository.Update(contact);

            // Create a new repository for verification purposes
            IContactRepository repository2 = CreateRepository();
            var modifiedContact = repository2.Find(id);

            // assert
            modifiedContact.FirstName.Should().Be("Bob");
        }

        [TestMethod]
        public void Delete_should_remove_entity()
        {
            // arrange
            IContactRepository repository = CreateRepository();

            // act
            repository.Remove(id);

            // Create a new repository for verification purposes
            IContactRepository repository2 = CreateRepository();
            var deletedEntity = repository2.Find(id);

            // assert
            deletedEntity.Should().BeNull();
        }
        
        private IContactRepository CreateRepository()
        {
            return new Dapper.ContactRepository();
        }
    }
}
