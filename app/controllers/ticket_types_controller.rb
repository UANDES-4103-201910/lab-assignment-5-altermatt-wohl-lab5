class TicketTypesController < ApplicationController
        def create
            @tickettype = TicketType.new(tickettype_params)
            respond_to do |format|
              if @tickettype.save
                format.html { redirect_to @tickettype, notice: 'Ticket type was successfully created.' }
                format.json { render :show, status: :created, location: @tickettype }
              else
                format.html { render :new }
                format.json { render json: @tickettype.errors, status: :unprocessable_entity }
            end
        end
        def destroy
            @tickettype.destroy 
            respond_to do |format|
                format.html { redirect_to tickettypes_url, notice: 'Ticket type was successfully destroyed.' }
                format.json { head :no_content }
            end
        end   
        def update
                respond_to do |format|
                      if @tickettype.update(tickettype_params)
                        format.html { redirect_to @tickettype, notice: 'Ticket type was successfully updated.' }
                        format.json { render :show, status: :ok, location: @tickettype }
                      else
                        format.html { render :edit }
                        format.json { render json: @tickettype.errors, status: :unprocessable_entity }
                end
        end

end
