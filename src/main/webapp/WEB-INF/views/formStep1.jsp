<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp"%>

<div class="slogan container container--90">
    <div class="slogan--item">
        <h1>
            Oddaj rzeczy, których już nie chcesz<br />
            <span class="uppercase">potrzebującym</span>
        </h1>

        <div class="slogan--steps">
            <div class="slogan--steps-title">Wystarczą 4 proste kroki:</div>
            <ul class="slogan--steps-boxes">
                <li>
                    <div><em>1</em><span>Wybierz rzeczy</span></div>
                </li>
                <li>
                    <div><em>2</em><span>Spakuj je w worki</span></div>
                </li>
                <li>
                    <div><em>3</em><span>Wybierz fundację</span></div>
                </li>
                <li>
                    <div><em>4</em><span>Zamów kuriera</span></div>
                </li>
            </ul>
        </div>
    </div>
</div>
</header>

<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="2">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>

    <div class="form--steps-container">
        <div class="form--steps-counter">Krok <span>1</span>/4</div>
        <!-- STEP 1: class .active is switching steps -->
        <form:form action="/formStep2" method="post" modelAttribute="donation" >
            <div data-step="1" class="active">
                <h3>Zaznacz co chcesz oddać:</h3>

            <c:forEach items="${categories}" var="item">
                <div class="form-group form-group--checkbox">
                    <label>
<%--                        <input--%>
<%--                                type="checkbox"--%>
<%--                                name="categories"--%>
<%--                                value="${item.id}"--%>
<%--                        />--%>
                        <form:checkbox  path="categoryList" title="${item.name}" value="${item.id}"/>
                        <span class="checkbox"></span>
                        <span class="description category">${item.name}</span>
                    </label>
                </div>
            </c:forEach>



                <div class="form-group form-group--buttons">
<%--        <button type="button" class="btn next-step">Dalej</button>--%>
                    <input type="submit" class="btn next-step" value="Dalej">
    </form:form>

                </div>
            </div>
        </div>

    </div>
</section>

<%@include file="footer.jsp"%>