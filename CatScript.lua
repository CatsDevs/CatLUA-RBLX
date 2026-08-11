-- Загрузка Rayfield Gen2
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

-- Создание главного окна
local Window = Rayfield:CreateWindow({
   name = "Roblox Utility Hub",
      subtitle = "Rayfield Gen2 Script",
         loadingTitle = "Загрузка интерфейса...",
            loadingSubtitle = "by Assistant",
               configurationSaving = {
                     enabled = true,
                           folderName = "RobloxHubConfigs",
                                 fileName = "MainConfig"
                                    },
                                       keySystem = false, -- Поставь true, если требуется защита ключом
                                       })

                                       -------------------------------------------------------------------
                                       -- ВКЛАДКА: AIMBOT
                                       -------------------------------------------------------------------
                                       local AimBotTab = Window:CreateTab({
                                          name = "AimBot",
                                             icon = 4483362458 -- Пример ID иконки (crosshair)
                                             })

                                             AimBotTab:CreateSection("Основные настройки AimBot")

                                             local AimBotEnabled = false

                                             AimBotTab:CreateToggle({
                                                name = "Включить AimBot",
                                                   currentValue = false,
                                                      flag = "AimBot_Enabled",
                                                         callback = function(value)
                                                               AimBotEnabled = value
                                                                     print("AimBot статус:", value)
                                                                        end,
                                                                        })

                                                                        AimBotTab:CreateSlider({
                                                                           name = "Плавность (Smoothness)",
                                                                              range = {1, 20},
                                                                                 increment = 1,
                                                                                    currentValue = 5,
                                                                                       flag = "AimBot_Smoothness",
                                                                                          callback = function(value)
                                                                                                -- Логика плавности прицеливания
                                                                                                   end,
                                                                                                   })

                                                                                                   AimBotTab:CreateSlider({
                                                                                                      name = "Радиус FOV",
                                                                                                         range = {10, 500},
                                                                                                            increment = 5,
                                                                                                               currentValue = 100,
                                                                                                                  flag = "AimBot_FOV",
                                                                                                                     callback = function(value)
                                                                                                                           -- Логика радиуса FOV
                                                                                                                              end,
                                                                                                                              })

                                                                                                                              AimBotTab:CreateDropdown({
                                                                                                                                 name = "Часть тела для прицела",
                                                                                                                                    options = {"Голова (Head)", "Торс (HumanoidRootPart)"},
                                                                                                                                       currentOption = "Голова (Head)",
                                                                                                                                          flag = "AimBot_Part",
                                                                                                                                             callback = function(option)
                                                                                                                                                   print("Выбрана цель:", option)
                                                                                                                                                      end,
                                                                                                                                                      })

                                                                                                                                                      -------------------------------------------------------------------
                                                                                                                                                      -- ВКЛАДКА: CAMERA BOT (Аимлок / Наведение камеры)
                                                                                                                                                      -------------------------------------------------------------------
                                                                                                                                                      local CameraBotTab = Window:CreateTab({
                                                                                                                                                         name = "Camera Bot",
                                                                                                                                                            icon = 4483345998 -- Пример ID иконки (video/camera)
                                                                                                                                                            })

                                                                                                                                                            CameraBotTab:CreateSection("Наведение камеры на игрока")

                                                                                                                                                            local CameraBotEnabled = false

                                                                                                                                                            CameraBotTab:CreateToggle({
                                                                                                                                                               name = "Включить Camera Bot",
                                                                                                                                                                  currentValue = false,
                                                                                                                                                                     flag = "CamBot_Enabled",
                                                                                                                                                                        callback = function(value)
                                                                                                                                                                              CameraBotEnabled = value
                                                                                                                                                                                    print("Camera Bot статус:", value)
                                                                                                                                                                                       end,
                                                                                                                                                                                       })

                                                                                                                                                                                       CameraBotTab:CreateToggle({
                                                                                                                                                                                          name = "Игнорировать союзников (TeamCheck)",
                                                                                                                                                                                             currentValue = true,
                                                                                                                                                                                                flag = "CamBot_TeamCheck",
                                                                                                                                                                                                   callback = function(value)
                                                                                                                                                                                                         -- Логика проверки команд
                                                                                                                                                                                                            end,
                                                                                                                                                                                                            })

                                                                                                                                                                                                            CameraBotTab:CreateSlider({
                                                                                                                                                                                                               name = "Скорость доводки камеры",
                                                                                                                                                                                                                  range = {1, 30},
                                                                                                                                                                                                                     increment = 1,
                                                                                                                                                                                                                        currentValue = 10,
                                                                                                                                                                                                                           flag = "CamBot_Speed",
                                                                                                                                                                                                                              callback = function(value)
                                                                                                                                                                                                                                    -- Логика скорости камеры
                                                                                                                                                                                                                                       end,
                                                                                                                                                                                                                                       })

                                                                                                                                                                                                                                       -------------------------------------------------------------------
                                                                                                                                                                                                                                       -- ВКЛАДКА: ESP
                                                                                                                                                                                                                                       -------------------------------------------------------------------
                                                                                                                                                                                                                                       local ESPTab = Window:CreateTab({
                                                                                                                                                                                                                                          name = "ESP",
                                                                                                                                                                                                                                             icon = 4483362458 -- Пример ID иконки (eye)
                                                                                                                                                                                                                                             })

                                                                                                                                                                                                                                             ESPTab:CreateSection("Визуальные функции (ESP)")

                                                                                                                                                                                                                                             local ESPEnabled = false

                                                                                                                                                                                                                                             ESPTab:CreateToggle({
                                                                                                                                                                                                                                                name = "Включить глобальный ESP",
                                                                                                                                                                                                                                                   currentValue = false,
                                                                                                                                                                                                                                                      flag = "ESP_Enabled",
                                                                                                                                                                                                                                                         callback = function(value)
                                                                                                                                                                                                                                                               ESPEnabled = value
                                                                                                                                                                                                                                                                     print("ESP статус:", value)
                                                                                                                                                                                                                                                                        end,
                                                                                                                                                                                                                                                                        })

                                                                                                                                                                                                                                                                        ESPTab:CreateToggle({
                                                                                                                                                                                                                                                                           name = "Боксы (Boxes)",
                                                                                                                                                                                                                                                                              currentValue = false,
                                                                                                                                                                                                                                                                                 flag = "ESP_Boxes",
                                                                                                                                                                                                                                                                                    callback = function(value)
                                                                                                                                                                                                                                                                                          -- Отрисовка квадратов
                                                                                                                                                                                                                                                                                             end,
                                                                                                                                                                                                                                                                                             })

                                                                                                                                                                                                                                                                                             ESPTab:CreateToggle({
                                                                                                                                                                                                                                                                                                name = "Имена (Names)",
                                                                                                                                                                                                                                                                                                   currentValue = false,
                                                                                                                                                                                                                                                                                                      flag = "ESP_Names",
                                                                                                                                                                                                                                                                                                         callback = function(value)
                                                                                                                                                                                                                                                                                                               -- Отрисовка никнеймов
                                                                                                                                                                                                                                                                                                                  end,
                                                                                                                                                                                                                                                                                                                  })

                                                                                                                                                                                                                                                                                                                  ESPTab:CreateToggle({
                                                                                                                                                                                                                                                                                                                     Name = "Полоска здоровья (Health Bar)",
                                                                                                                                                                                                                                                                                                                        currentValue = false,
                                                                                                                                                                                                                                                                                                                           flag = "ESP_Health",
                                                                                                                                                                                                                                                                                                                              callback = function(value)
                                                                                                                                                                                                                                                                                                                                    -- Отрисовка здоровья
                                                                                                                                                                                                                                                                                                                                       end,
                                                                                                                                                                                                                                                                                                                                       })

                                                                                                                                                                                                                                                                                                                                       ESPTab:CreateColorPicker({
                                                                                                                                                                                                                                                                                                                                          name = "Цвет боксов ESP",
                                                                                                                                                                                                                                                                                                                                             color = Color3.fromRGB(255, 0, 0),
                                                                                                                                                                                                                                                                                                                                                flag = "ESP_Color",
                                                                                                                                                                                                                                                                                                                                                   callback = function(value)
                                                                                                                                                                                                                                                                                                                                                         -- Изменение цвета визуализации
                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                            })

                                                                                                                                                                                                                                                                                                                                                            -------------------------------------------------------------------
                                                                                                                                                                                                                                                                                                                                                            -- Финализация
                                                                                                                                                                                                                                                                                                                                                            -------------------------------------------------------------------
                                                                                                                                                                                                                                                                                                                                                            -- Сохранение и загрузка конфигураций обрабатываются автоматически в Gen2
                                                                                                                                                                                                                                                                                                                                                            