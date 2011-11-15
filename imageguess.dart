#import('dart:dom');
#resource('style.css');

class HiddenNumber {
  int gridsize = 4;
  HTMLDivElement div,textelm,coverelm;
  
  HTMLDivElement element() {
    if (div != null) {
      return div;
    }
    
    HTMLDocument d = window.document;
    
    div = d.createElement('div');
    div.className = "hiddennumber";
    
    textelm = d.createElement('div');
    textelm.className = 'hiddentext';
    
    coverelm = d.createElement('div');
    coverelm.className = 'hiddencover';
    
    for(int i=0; i<gridsize; i++) {
      for(int j=0; i<gridsize; i++) {
        HTMLDivElement sq = d.createElement('div');
        sq.className = "opaque";
        sq.onclick = (Event e) {
          sq.className = "transparent";
        };
        coverelm.appendChild(sq);
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
    HTMLDocument doc = window.document;
    HTMLParagraphElement p = doc.createElement('p');
    p.textContent = message;
    doc.body.appendChild(p);
  }
}

void main() {
  new imageguess().run();
}
