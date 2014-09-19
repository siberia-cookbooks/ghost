ghost Cookbook
==============
TODO: Enter the cookbook description here.

e.g.
This cookbook makes your favorite breakfast sandwich.

Requirements
------------
TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
#### packages
- `toaster` - ghost needs toaster to brown your bagel.

Attributes
----------

#### ghost::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ghost']['gid']</tt></td>
    <td>Integer</td>
    <td>Group ID for the ghost group</td>
    <td><tt>1080</tt></td>
  </tr>
  <tr>
    <td><tt>['ghost']['uid']</tt></td>
    <td>Integer</td>
    <td>User ID for the ghost user</td>
    <td><tt>1080</tt></td>
  </tr>
  <tr>
    <td><tt>['ghost']['email']</tt></td>
    <td>String</td>
    <td>Email address to use for outgoing emails</td>
    <td><tt>ghost@kaizengarden.co</tt></td>
  </tr>
  <tr>
    <td><tt>['ghost']['url']</tt></td>
    <td>String</td>
    <td>URL for the ghost install</td>
    <td><tt>blog.kaizengarden.co</tt></td>
  </tr>
</table>

Usage
-----
#### ghost::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `ghost` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[ghost]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
