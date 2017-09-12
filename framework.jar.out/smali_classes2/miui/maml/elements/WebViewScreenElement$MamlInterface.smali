.class Lmiui/maml/elements/WebViewScreenElement$MamlInterface;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/WebViewScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MamlInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WebViewScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/WebViewScreenElement;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/WebViewScreenElement;Lmiui/maml/elements/WebViewScreenElement$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/WebViewScreenElement;
    .param p2, "x1"    # Lmiui/maml/elements/WebViewScreenElement$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lmiui/maml/elements/WebViewScreenElement;)V

    return-void
.end method


# virtual methods
.method public doAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/WebViewScreenElement;->performAction(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getObj(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObj(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 60
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    int-to-double v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 65
    return-void
.end method

.method public putObj(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lmiui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lmiui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/WebViewScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
