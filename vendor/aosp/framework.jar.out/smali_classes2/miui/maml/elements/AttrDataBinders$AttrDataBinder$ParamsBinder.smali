.class Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;
.super Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParamsBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;->this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
    .param p2, "x1"    # Lmiui/maml/elements/AttrDataBinders$1;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lmiui/maml/elements/ScreenElement;)V
    .locals 4
    .param p1, "e"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 78
    check-cast p1, Lmiui/maml/elements/TextScreenElement;

    .end local p1    # "e":Lmiui/maml/elements/ScreenElement;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;->this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v2, v2, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lmiui/maml/data/ContextVariables;

    iget-object v3, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;->this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v3, v3, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/maml/data/ContextVariables;->getVar(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lmiui/maml/elements/TextScreenElement;->setParams([Ljava/lang/Object;)V

    .line 79
    return-void
.end method
