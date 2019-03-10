
  <div class="container-fluid">

    <!-- Account Creation Module -->
    <div class="row text-center">
      <h4 class="col-sm-12" style="font-family: 'Raleway', sans-serif;">Notifications</h4>
    </div>

    <br>

        <form autocomplete="off" action="#">
          <div class="row">
            <div class="col-sm-10 offset-sm-1">
                <div class="col-sm-12">
                  <div class="form-row">
                    <!-- Side bar -->
                    <div class="col-sm-4" style="width: 18rem;">
                        <table id="specialTable" class="table">
                            <thead class="table-heading">
                                <tr>
                                    <th colspan="2">
                                        <input class="maxed-button" type="text" id="specialSearch" onkeyup="myFunction(1, 'specialSearch', 'specialTable');" placeholder="Search for names..">
                                    </th>
                                </tr>
                                <tr>
                                    <th>
                                      <input class="form-control" name="notification-item" onClick="selectAll(this, 'notification-item');" type="checkbox">
                                    </th>
                                    <th>Message</th>
                                </tr>
                            </thead>
                            <tbody class="table-body">
                              <tr class="mailbox-item">
                                  <td><input class="form-control" name="notification-item" type="checkbox"></td>
                                  <td><a href="#">Mauris dolor elit, hendrerit non elit ...</a></td>
                              </tr>
                              <tr class="mailbox-item">
                                  <td><input class="form-control" name="notification-item" type="checkbox"></td>
                                  <td><a href="#">Lorem ipsum set amet dolor ...</a></td>
                              </tr>
                              <tr class="mailbox-item">
                                  <td><input class="form-control" name="notification-item" type="checkbox"></td>
                                  <td><a href="#">Vel maximus augue purus ...</a></td>
                              </tr>
                              <tr class="mailbox-item">
                                  <td><input class="form-control" name="notification-item" type="checkbox"></td>
                                  <td><a href="#">Praesent aliquam ipsum eget magna ...</a></td>
                              </tr>
                              <tr class="mailbox-item">
                                  <td><input class="form-control" name="notification-item" type="checkbox"></td>
                                  <td><a href="#">Lorem ipsum set amet dolor ...</a></td>
                              </tr>
                              <tr class="mailbox-item">
                                  <td><input class="form-control" name="notification-item" type="checkbox"></td>
                                  <td><a href="#">Vel maximus augue purus ...</a></td>
                              </tr>
                              <tr class="mailbox-item">
                                  <td><input class="form-control" name="notification-item" type="checkbox"></td>
                                  <td><a href="#">Praesent aliquam ipsum eget magna ...</a></td>
                              </tr>
                            </tbody>
                        </table>
                        <!-- Delete Button -->
                        <hr>
                        <div class="form-row">
                          <div class="form-group col-sm-12 text-center">
                            <button class="btn button-filled-flat maxed-button">Remove Selected Notifications</button>
                          </div>
                        </div>
                    </div>
                    <div class="form-group col-sm-7 offset-sm-1">
                      <label><b>From:</b> John Doe</label>
                      <br>
                      <label><b>Subject:</b> Some event at Xavier Hall</label>
                      <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut sollicitudin nisl. Nam fermentum accumsan varius. Nulla neque diam, gravida ut pretium vel, aliquet eu risus. Aliquam ante ex, iaculis non mollis eget, viverra ut metus. Ut quis tincidunt arcu. Fusce id hendrerit ipsum. Proin vitae venenatis erat. Morbi imperdiet aliquam elit ac consequat. Donec at neque metus. Nulla sit amet dui mauris. Integer elementum, ante id luctus molestie, lacus turpis suscipit arcu, vel maximus augue purus sit amet elit. Ut vel leo vel diam pharetra mattis quis ac erat. Nulla eget gravida libero. Donec facilisis mi ante, sed finibus turpis facilisis a. </p>
                      <hr>

                      <!-- Approve or Reject Button -->
                      <div class="form-group col-sm-12 text-center">
                        <button class="btn button-filled-flat half-button">Approve</button>
                        <button class="btn button-filled-flat half-button">Reject</button>
                      </div>
                    </div>
                  </div>

                  <br>

                </div>

              <br>
              <br>
              <br>

            </div>

          </div>

        </form>

        <br>
        <br>
        <br>

    <!-- Modals -->
    <!-- The Modal -->

        <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="sp-abstract" id="exampleModalLongTitle">ABSTRACT</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-sm-2">
                                <h5 class="sp-thumbnail-title">Title</h5>
                                <p class="sp-thumbnail-proponents">
                                    Proponents
                                </p>
                                <p class="sp-thumbnail-advisers">
                                    Advisers
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <p class="sp-abstract-body">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mollis, ipsum non viverra
                                    laoreet, dolor neque molestie tellus, vitae interdum dolor diam a augue. Maecenas placerat
                                    arcu et risus tempor, ac fermentum massa blandit. Fusce vitae nibh turpis. Nullam quis
                                    lorem velit. Ut eu rhoncus risus. Donec sagittis congue lectus. Curabitur sit amet eros
                                    non arcu volutpat tristique sed id risus. Proin suscipit nulla ac odio pretium maximus.
                                    Pellentesque non tempus est. Nam at ex ut ex interdum dignissim.
                                </p>
                                <p class="sp-abstract-label">Keywords: </p>
                                <span class="sp-abstract-keywords">word, word, word</span>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer justify-content-md-center">
                        <button type="button" class="btn button-filled-flat">VIEW FULL DOCUMENT</button>
                    </div>
                </div>
            </div>
        </div>
