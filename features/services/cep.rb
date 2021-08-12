module Rest
    class Cep
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']
        
        def get_cep
            self.class.get('/api/Cep')
        end


    end
    end