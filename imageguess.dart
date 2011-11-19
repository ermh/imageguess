#import('dart:html');
#resource('style.css');

class HiddenNumber {
  int gridsize = 4;
  DivElement div,textelm,coverelm;
  
  DivElement element() {
    if (div != null) {
      return div;
    }
    
    Document d = window.document;
    
    div = d.createElement('div');
    div.classes = "hiddennumber";
    
    textelm = d.createElement('div');
    textelm.classes = 'hiddentext';
    
    coverelm = d.createElement('div');
    coverelm.classes = 'hiddencover';
    
    for(int i=0; i<gridsize; i++) {
      for(int j=0; i<gridsize; i++) {
        DivElement sq = d.createElement('div');
        sq.classes = "opaque";
        sq.on.click.add((Event e) {
          sq.classes = "transparent";
        });
        coverelm.elements.add(sq);
      }
    }
    
    this.div = div;
  }
  
  void text(String n) {
        
  }
  
  
}

class imageguess {

  imageguess() {
  }

  void run() {
    write("Hello World!");
  }

  void write(String message) {
    // the DOM library defines a global "window" variable
    Document doc = window.document;
    ParagraphElement p = doc.createElement('p');
    p.text = message;
    doc.body.insertBefore(p);//appendChild(p);
  }
}

void main() {
  new imageguess().run();
}
