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



    <div data-step="4">
        <h3>Podaj adres oraz termin odbioru rzecz przez kuriera:</h3>

        <div class="form-section form-section--columns">
            <div class="form-section--column">
                <h4>Adres odbioru</h4>
                <div class="form-group form-group--inline">
                    <label> Ulica
                        <form:input cssClass="street" path="street"/>
                    </label>
                </div>

                <div class="form-group form-group--inline">
                    <label> Miasto
                        <form:input cssClass="city" path="city"/>
                    </label>
                </div>

                <div class="form-group form-group--inline">
                    <label>
                        Kod pocztowy
                        <form:input cssClass="postCode" path="zipCode"/>
                    </label>
                </div>

                <div class="form-group form-group--inline">
                    <label>
                        Numer telefonu
                        <form:input cssClass="phone" path="phoneNumber" pattern="[+][0-9]{2}[ ][0-9]{3}[ ][0-9]{3}[ ][0-9]{3}" placeholder="+48 *** *** ***"/>
                    </label>
                </div>
            </div>

            <div class="form-section--column">
                <h4>Termin odbioru</h4>
                <div class="form-group form-group--inline">
                    <label> Data <form:input cssClass="date" type="date" path="date"/> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label> Godzina <form:input cssClass="time" type="time" path="time"/> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label>
                        Uwagi dla kuriera
                        <form:textarea cssClass="comment" path="pickUpComment" rows="5"/>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group form-group--buttons">
            <button type="button" class="btn prev-step">Wstecz</button>
            <button id="summary" type="button" class="btn next-step">Dalej</button>
        </div>
    </div>


</section>

<%@include file="footer.jsp"%>