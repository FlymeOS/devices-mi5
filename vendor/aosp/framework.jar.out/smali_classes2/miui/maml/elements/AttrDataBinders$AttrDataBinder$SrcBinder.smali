.class Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;
.super Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrcBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .locals 1

    .prologue
    .line 96
    iput-object p1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;->this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
    .param p2, "x1"    # Lmiui/maml/elements/AttrDataBinders$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lmiui/maml/elements/ScreenElement;)V
    .locals 2
    .param p1, "e"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 99
    check-cast p1, Lmiui/maml/elements/ImageScreenElement;

    .end local p1    # "e":Lmiui/maml/elements/ScreenElement;
    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;->this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v0, v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lmiui/maml/data/ContextVariables;

    iget-object v1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;->this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v1, v1, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContextVariables;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/maml/elements/ImageScreenElement;->setSrc(Ljava/lang/String;)V

    .line 100
    return-void
.end method
