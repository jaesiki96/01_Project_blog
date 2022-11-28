<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>blog_project</title>
    <link rel="stylesheet" href="/resources/css/blog.css">
    <link rel="stylesheet" href="/resources/css/blog.rtl.css">
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<main class="container mt-lg-5">
    <div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
        <div class="col-md-6 px-0">
            <h1 class="display-4 fst-italic" style="font-family: '나눔스퀘어 네오 ExtraBold'">반환 미군기지의 흔적을 찾아서</h1>
            <p class="lead my-3" style="font-family: '나눔스퀘어 네오 Bold'">
                이런분께 추천드려요!
            </p>
            <p class="lead my-3" style="font-family: '나눔스퀘어 네오 Light'">
                - 미군기지와 카투사에 관심이 있는 분 <br>
                - 용산 뿐 아니라 다른 알려지지 않은 많은 미군기지에 관심 있는 분 <br>
                - 미군과 관련된 한국 근현대사의 현장에 관심이 있는 분
            </p>
            <p class="lead mb-0" style="font-size: small"><a href="https://brunch.co.kr/brunchbook/mycampgreaves" class="text-white fw-bold">Read more</a></p>
        </div>
    </div>

    <div class="row g-5">
        <div class="col-md-8">
            <h3 class="pb-4 mb-4 fst-italic border-bottom">
                From the Firehose
            </h3>

            <article class="blog-post">
                <h2 class="blog-post-title mb-1">Sample blog post</h2>
                <p class="blog-post-meta">January 1, 2021 by <a href="#">Mark</a></p>

                <p>This blog post shows a few different types of content that’s supported and styled with Bootstrap.
                    Basic typography, lists, tables, images, code, and more are all supported as expected.</p>
                <hr>
                <p>This is some additional paragraph placeholder content. It has been written to fill the available
                    space and show how a longer snippet of text affects the surrounding content. We'll repeat it often
                    to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
                <h2>Blockquotes</h2>
                <p>This is an example blockquote in action:</p>
                <blockquote class="blockquote">
                    <p>Quoted text goes here.</p>
                </blockquote>
                <p>This is some additional paragraph placeholder content. It has been written to fill the available
                    space and show how a longer snippet of text affects the surrounding content. We'll repeat it often
                    to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
                <h3>Example lists</h3>
                <p>This is some additional paragraph placeholder content. It's a slightly shorter version of the other
                    highly repetitive body text used throughout. This is an example unordered list:</p>
                <ul>
                    <li>First list item</li>
                    <li>Second list item with a longer description</li>
                    <li>Third list item to close it out</li>
                </ul>
                <p>And this is an ordered list:</p>
                <ol>
                    <li>First list item</li>
                    <li>Second list item with a longer description</li>
                    <li>Third list item to close it out</li>
                </ol>
                <p>And this is a definition list:</p>
                <dl>
                    <dt>HyperText Markup Language (HTML)</dt>
                    <dd>The language used to describe and define the content of a Web page</dd>
                    <dt>Cascading Style Sheets (CSS)</dt>
                    <dd>Used to describe the appearance of Web content</dd>
                    <dt>JavaScript (JS)</dt>
                    <dd>The programming language used to build advanced Web sites and applications</dd>
                </dl>
                <h2>Inline HTML elements</h2>
                <p>HTML defines a long list of available inline tags, a complete list of which can be found on the <a
                        href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element">Mozilla Developer Network</a>.
                </p>
                <ul>
                    <li><strong>To bold text</strong>, use <code class="language-plaintext highlighter-rouge">&lt;strong&gt;</code>.
                    </li>
                    <li><em>To italicize text</em>, use <code
                            class="language-plaintext highlighter-rouge">&lt;em&gt;</code>.
                    </li>
                    <li>Abbreviations, like <abbr title="HyperText Markup Language">HTML</abbr> should use <code
                            class="language-plaintext highlighter-rouge">&lt;abbr&gt;</code>, with an optional <code
                            class="language-plaintext highlighter-rouge">title</code> attribute for the full phrase.
                    </li>
                    <li>Citations, like <cite>— Mark Otto</cite>, should use <code
                            class="language-plaintext highlighter-rouge">&lt;cite&gt;</code>.
                    </li>
                    <li>
                        <del>Deleted</del>
                        text should use <code class="language-plaintext highlighter-rouge">&lt;del&gt;</code> and
                        <ins>inserted</ins>
                        text should use <code class="language-plaintext highlighter-rouge">&lt;ins&gt;</code>.
                    </li>
                    <li>Superscript <sup>text</sup> uses <code
                            class="language-plaintext highlighter-rouge">&lt;sup&gt;</code> and subscript
                        <sub>text</sub> uses <code class="language-plaintext highlighter-rouge">&lt;sub&gt;</code>.
                    </li>
                </ul>
                <p>Most of these elements are styled by browsers with few modifications on our part.</p>
                <h2>Heading</h2>
                <p>This is some additional paragraph placeholder content. It has been written to fill the available
                    space and show how a longer snippet of text affects the surrounding content. We'll repeat it often
                    to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
                <h3>Sub-heading</h3>
                <p>This is some additional paragraph placeholder content. It has been written to fill the available
                    space and show how a longer snippet of text affects the surrounding content. We'll repeat it often
                    to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
                <pre><code>Example code block</code></pre>
                <p>This is some additional paragraph placeholder content. It's a slightly shorter version of the other
                    highly repetitive body text used throughout.</p>
            </article>

            <article class="blog-post">
                <h2 class="blog-post-title mb-1">Another blog post</h2>
                <p class="blog-post-meta">December 23, 2020 by <a href="#">Jacob</a></p>

                <p>This is some additional paragraph placeholder content. It has been written to fill the available
                    space and show how a longer snippet of text affects the surrounding content. We'll repeat it often
                    to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
                <blockquote>
                    <p>Longer quote goes here, maybe with some <strong>emphasized text</strong> in the middle of it.</p>
                </blockquote>
                <p>This is some additional paragraph placeholder content. It has been written to fill the available
                    space and show how a longer snippet of text affects the surrounding content. We'll repeat it often
                    to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
                <h3>Example table</h3>
                <p>And don't forget about tables in these posts:</p>
                <table class="table">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Upvotes</th>
                        <th>Downvotes</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Alice</td>
                        <td>10</td>
                        <td>11</td>
                    </tr>
                    <tr>
                        <td>Bob</td>
                        <td>4</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td>Charlie</td>
                        <td>7</td>
                        <td>9</td>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td>Totals</td>
                        <td>21</td>
                        <td>23</td>
                    </tr>
                    </tfoot>
                </table>

                <p>This is some additional paragraph placeholder content. It's a slightly shorter version of the other
                    highly repetitive body text used throughout.</p>
            </article>

            <article class="blog-post">
                <h2 class="blog-post-title mb-1">New feature</h2>
                <p class="blog-post-meta">December 14, 2020 by <a href="#">Chris</a></p>

                <p>This is some additional paragraph placeholder content. It has been written to fill the available
                    space and show how a longer snippet of text affects the surrounding content. We'll repeat it often
                    to keep the demonstration flowing, so be on the lookout for this exact same string of text.</p>
                <ul>
                    <li>First list item</li>
                    <li>Second list item with a longer description</li>
                    <li>Third list item to close it out</li>
                </ul>
                <p>This is some additional paragraph placeholder content. It's a slightly shorter version of the other
                    highly repetitive body text used throughout.</p>
            </article>

            <nav class="blog-pagination" aria-label="Pagination">
                <a class="btn btn-outline-primary rounded-pill" href="#">↑</a>
<%--                <a class="btn btn-outline-secondary rounded-pill disabled">Newer</a>--%>
            </nav>

        </div>

        <div class="col-md-4">
            <div class="position-sticky" style="top: 2rem;">
                <div class="p-4 mb-3 bg-light rounded">
                    <h4 class="fst-italic">About</h4>
                    <p class="mb-0">Customize this section to tell your visitors a little bit about your publication,
                        writers, content, or something else entirely. Totally up to you.</p>
                </div>

                <div class="p-4">
                    <h4 class="fst-italic">Elsewhere</h4>
                    <ol class="list-unstyled">
                        <li><a href="https://github.com/jaesiki96">GitHub</a></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</main>
<jsp:include page="layout/footer.jsp" flush="false"></jsp:include>
</body>
</html>
