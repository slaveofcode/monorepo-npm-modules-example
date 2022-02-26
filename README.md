# Example Monorepo for NPM Modules 
This is an example of multiple NPM modules published on one repository that stands as a monorepo project.

## Projects
These projects are just an example of implementation where every project has its own module (`@slaveofcode` is the GitHub account/organization name)

- Auth (npm module as: @slaveofcode/test-auth)
- Cryptography (npm module as: @slaveofcode/test-cryptography)
- Common Helpers (npm module as: @slaveofcode/test-common-helpers)
- Notification (npm module as: @slaveofcode/test-notification)
- Service Adapter (npm module as: @slaveofcode/test-service-adapter)

**I manually changed the module name at package.json & package-lock.json (use `test-` prefix) because those modules are created just for testing only**

## Auto-release per Project
The GitHub action will automatically release a new npm module version when the version of `package.json` is changed (patch-minor-major), triggered by pushing the commit at `main` branch

## Notes for Project
- remove label `private: true` on `package.json`
- add custom `.npmrc` to handle local & cloud registry authentication (see the example at `auth/.npmrc`)
- Don't forget to set `main` and `files` to only direct the generated `.js` files at `package.json`
- Add extra config at `package.json` (You might adjust the account & repository name)

```js
...
  "repository": {
      "url": "https://github.com/slaveofcode/monorepo-npm-modules-example"
  },
  "publishConfig": {
      "registry": "https://npm.pkg.github.com/"
  }
...
```