Custom Bootstrap 5 Breadcrumbs -Ver 2
=====================================

Custom Breadcrumbs for Bootstrap 5 framework

***Abstract: We are presenting code (CSS) for custom Bootstrap 5 breadcrumbs.
This is an improved version of the previously published article.***

1 The need for better Breadcrumbs
---------------------------------

Bootstrap 5 framework is coming with very basic Breadcrumbs implementation. I
needed something much better, both visually and more functional. Over time, in
my applications, I found it very useful to use Breadcrumbs to enable the user to
go back to the higher level, after he drills into details on the particular
item/object. Very important to me was the ability to present **TEXT DATA IN
TWO ROWS**, especially in cases where I am showing some data and ID, like an
indication that is the data for some Account, and at the same time providing the
Account number. I was not satisfied with the solutions I saw on the internet, so
I developed my own. While the title says this is a "Bootstrap 5" library, it is
completely independent of the Bootstrap CSS and only chosen colors were taken
from the Bootstrap CSS to align with the Bootstrap 5 theme. You can use it
independently from Bootstrap if you like. 

### 1.1 Changes in this version
This version incorporates suggestions and code from
Graeme_Grant@codeproject.com to make the code shorter. I do not necessarily
agree with all the suggestions, because I think code human readability is more
important than shorter code. So, I made my own new version. Also, this version
uses Bootstrap Icons [1] instead of Font Awesome Icons.

2 Final result
--------------

Here is what the final result looks like, together with the demo code that
generates it. I created breadcrumbs strips in 3 sizes (large, medium, small),
with optional usage of icons. Colors can be chosen at will, and the hover effect
is present by default, unless explicitly disabled. The hover effect is usually
disabled for the last breadcrumb because that is the current selection in
effect.

![55_pic21](Readme/55_pic21.png)

Here is the HTML code that generates the above rendering. Any web developer
should be able to read the HTML code and match it to the above picture to find
the variant he/she likes. If you want to use icons, you can install the free
version of Bootstrap Icons [1], and refer to it, similar to how it is done in
this example. HTML code for icon usage is a bit complicated because we needed to
separate icons and text into 2 separate elements so they could be styled
independently.

``` js
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="breadcrumb3.css" />
    <!-- Download bootstrap icons from https://icons.getbootstrap.com/#install  
        and install -->
    <link rel="stylesheet" href="bootstrap-icons-1.11.3\font\bootstrap-icons.min.css" />
</head>

<body>
    <!--Large size --------------------------------------------------------------->
    <H5>Large size, info case</H5>
    <div class="breadcrumb3-lg ">
        <a href="#" class="breadcrumb3-item info">Accounts</a>
        <a href="#" class="breadcrumb3-item info">Account number</br>123456</a>
        <a href="#" class="breadcrumb3-item primary">Details</a>
    </div>
</body>
</html>
``` 

3 Breadcrumbs CSS
-----------------

Here is the CSS, no JavaScript is needed. I deliberately used the class name
"breadcrumbs3" to avoid name collision with the Bootstrap 5 original class.

See Breadcrumb3.css in the repository. 

4 Full Article
--------------

This is just excerpt from an article published at:
[Custom Bootstrap 5 Breadcrumbs -Ver 2](https://markpelf.com/2114/custom-bootstrap-5-breadcrumbs-ver-2/)

5 References
------------

[1] https://icons.getbootstrap.com/\#install

[2] [Custom Bootstrap 5 Breadcrumbs -Ver 2](https://markpelf.com/2114/custom-bootstrap-5-breadcrumbs-ver-2/)


#### MarkdownChallenge1==============
__Advertisement :)__

(c) (C) (r) (R) (tm) (TM) (p) (P) +- 

!!!!!! ???? ,, -- --- 

~~Strikethrough~~

#### Syntax highlighting  
``` js
var foo = function (bar) {
  return bar++;
};

console.log(foo(5));
``` 

#### Tables  
| Option | Description |
| ------ | ----------- |
| data   | path to data files  |
| engine | engine to be used  |
| ext    | extension to be  |

#### MarkdownChallenge1==============

#### MarkdownChallenge3==============
[Url with spaces](/url with space)

[Url with no spaces](/url-with-no-space) 

#####No space after markup  
No space **after**, markup

https://www.url-auto-linking.com

markpelf@extended-email-autolink.com

mailto:markpelf@extended-protocol-autolink.com

Color green `#0F0`

Color green `RGB(0,255,0)`

##### Punctuation issues  
No punctuation **A**C 

with colon **A:**C

with dash **A-**C

with space **A **B

using undercores __A:__C 

Punctuation issues fixed

with colon  **A:**&ZeroWidthSpace;C

with colon  **A:**&#8203;C

with colon  **A:**&#x200B;C 


#### MarkdownChallenge3============== 

#### MarkdownChallenge2==============
#### Plugins  
`markdown-it` supports `syntax plugins` 


#### Subscript/ Superscript
- 19^th^
- H~2~O

++Inserted text++

==Marked text==

#### Footnotes   
Footnote 1 link[^first].

Duplicated footnote reference[^second].

[^first]: Footnote **can have markup**  
    and multiple paragraphs.

[^second]: Footnote text.  

#### Custom containers
::: warning
*here be dragons*
:::

#### MarkdownChallenge2==============

### Добавим кириллцу и уведомления github 

> [!NOTE]
> Это информация к размышлению

> [!TIP]
> Это мощный совет