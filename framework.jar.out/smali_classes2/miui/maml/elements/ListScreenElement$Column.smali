.class public Lmiui/maml/elements/ListScreenElement$Column;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public mList:Lmiui/maml/elements/ListScreenElement;

.field public mName:Ljava/lang/String;

.field public mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

.field public mRoot:Lmiui/maml/ScreenElementRoot;

.field public mTarget:Ljava/lang/String;

.field public mTargetElement:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/elements/ListScreenElement;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p3, "list"    # Lmiui/maml/elements/ListScreenElement;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lmiui/maml/elements/ListScreenElement$Column;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 252
    iput-object p3, p0, Lmiui/maml/elements/ListScreenElement$Column;->mList:Lmiui/maml/elements/ListScreenElement;

    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lmiui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V

    .line 256
    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 259
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    .line 260
    const-string v0, "target"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    .line 261
    new-instance v0, Lmiui/maml/elements/ListScreenElement$Column$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/ListScreenElement$Column$1;-><init>(Lmiui/maml/elements/ListScreenElement$Column;)V

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

    .line 267
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/VariableArrayElement;->registerVarObserver(Lmiui/maml/elements/VariableArrayElement$VarObserver;Z)V

    .line 286
    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 270
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 272
    .local v0, "ele":Lmiui/maml/elements/ScreenElement;
    instance-of v1, v0, Lmiui/maml/elements/VariableArrayElement;

    if-eqz v1, :cond_1

    .line 273
    check-cast v0, Lmiui/maml/elements/VariableArrayElement;

    .end local v0    # "ele":Lmiui/maml/elements/ScreenElement;
    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    .line 279
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement$Column;->mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmiui/maml/elements/VariableArrayElement;->registerVarObserver(Lmiui/maml/elements/VariableArrayElement$VarObserver;Z)V

    .line 280
    :goto_0
    return-void

    .line 275
    .restart local v0    # "ele":Lmiui/maml/elements/ScreenElement;
    :cond_1
    const-string v1, "ListScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find VarArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
