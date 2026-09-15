# Getting Started

Welcome to your new CAP project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`readme.md` | this getting started guide

## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start with your domain model, in a CDS file in `db/`

## Learn More

Learn more at <https://cap.cloud.sap>.


--------------------------------------------


## Study Notes

## Difference between Put and Patch

-> put will update only those property wich is passed and rest of the property will be blank
-> Patch will update only thos property which is passed and rest of the property will be as it is.
## PUT defination
1. It is call full update
2. Replaces the entire resources
3. We must all the fields even unchanged one
4. Missing fields replace by null

## Patch defination
1. Partial Update
2. Updates only fileds which send
3.  other fields remain unchanged


## Difference between cds watch and cds run

-> CDS watch continouesly run if we changes anything no need to run again utill forcefully kill
-> cds run will not give latest data if we changes anything in the code you need to kill the terminal and run again.

## CDS watch
1. Auto restart on change
2. Runs your app watches your changes
3. Automatically reloads when you update .cds .js and .json file
4. Great for Development(no need to re-run manually)

## cds run
1. Start the apps once
2. Runs your cap application one time
3. if we make code changes, we need to run manually
4. Good for Production like runs and quick tests.




## Aspect
1. Aspects is reusable component or attributes which can be used in multiple entities. 
2. We have standard aspect also can be created the custom one aswell.
3. Standard Aspects are managed-createdat, createdBy, modified, modifiedby, 
4. cuid, temporal - validTo, Validfrom


## Type 
1. type is reusable datastructure that defines a group of fields like shortcuts for complex datatype.

ex. type AddressType {

        street : String(100);
        city : String(100);
        postalcode: String(100);
        country : String(100);

}


## Difference between type and aspect

Type -> 
1. Used to defined custom datatype
2. just a group of fileds
3. No annotation
4. Cannot be used with compositionof

Aspects ->
1. Reusable component can be used with multiple entities
2. Support annotation like @UI, @mandatory
3. can be used with composotionof