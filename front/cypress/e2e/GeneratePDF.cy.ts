describe('Download PDF', () => {
    it('should download a PDF file', () => {
      cy.visit('http://localhost:4200/home')
  
      cy.get('button[data-test="download-pdf-button"]').first().click(); // click the download button
  
      // check if the PDF file has been downloaded successfully
      cy.wait(5000); // wait for the download to complete (you may need to adjust the duration depending on your application)
      cy.exec('ls cypress/downloads/*.pdf').its('stdout').should('not.be.empty');
    });
  });
  