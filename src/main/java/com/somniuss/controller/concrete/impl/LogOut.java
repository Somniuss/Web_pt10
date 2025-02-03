package com.somniuss.controller.concrete.impl;

import com.somniuss.controller.concrete.Command;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogOut implements Command {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	
    	 // Устанавливаем заголовки, чтобы предотвратить кэширование страницы
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        
        // Удаление атрибутов сессии (например, пользователя)
        request.getSession().invalidate();  // Это очистит всю сессию

        // Перенаправление на страницу входа или на главную страницу
        response.sendRedirect("index.jsp");  // Пример редиректа на страницу index.jsp
    }
}
