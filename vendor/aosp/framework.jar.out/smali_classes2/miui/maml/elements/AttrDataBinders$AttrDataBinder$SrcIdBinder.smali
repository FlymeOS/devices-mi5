.class Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;
.super Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrcIdBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
    .param p2, "x1"    # Lmiui/maml/elements/AttrDataBinders$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lmiui/maml/elements/ScreenElement;)V
    .locals 4
    .param p1, "e"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 106
    iget-object v1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v1, v1, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lmiui/maml/data/ContextVariables;

    iget-object v2, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$0:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v2, v2, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/data/ContextVariables;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 107
    .local v0, "d":Ljava/lang/Double;
    check-cast p1, Lmiui/maml/elements/ImageScreenElement;

    .end local p1    # "e":Lmiui/maml/elements/ScreenElement;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->setSrcId(D)V

    .line 108
    return-void

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method
