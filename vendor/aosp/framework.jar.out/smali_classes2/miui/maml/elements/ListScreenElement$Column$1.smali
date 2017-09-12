.class Lmiui/maml/elements/ListScreenElement$Column$1;
.super Ljava/lang/Object;
.source "ListScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/VariableArrayElement$VarObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ListScreenElement$Column;


# direct methods
.method constructor <init>(Lmiui/maml/elements/ListScreenElement$Column;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lmiui/maml/elements/ListScreenElement$Column$1;->this$0:Lmiui/maml/elements/ListScreenElement$Column;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChange([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 264
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column$1;->this$0:Lmiui/maml/elements/ListScreenElement$Column;

    iget-object v0, v0, Lmiui/maml/elements/ListScreenElement$Column;->mList:Lmiui/maml/elements/ListScreenElement;

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column$1;->this$0:Lmiui/maml/elements/ListScreenElement$Column;

    iget-object v1, v1, Lmiui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmiui/maml/elements/ListScreenElement;->addColumn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    return-void
.end method
