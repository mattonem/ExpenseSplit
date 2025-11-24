|newRepository|
Smalltalk vm maxExternalSemaphoresSilently: 1000.
newRepository := IceRepositoryCreator new
				repository: nil;
				location: '.' asFileReference ;
				createRepository .
newRepository register.

ExpenseSplit appFolder: './build' asFileLocatorOrReference ensureCreateDirectory.
ExpenseSplit exportApp.
