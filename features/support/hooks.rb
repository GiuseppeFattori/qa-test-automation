After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/', '_')

    if scenario.failed?
        foto = "report/screenshots/#{scenario_name}.png"
        page.save_screenshot(foto)
        attach(foto, 'image.png')
        attach('Clique aqui')
    end
end