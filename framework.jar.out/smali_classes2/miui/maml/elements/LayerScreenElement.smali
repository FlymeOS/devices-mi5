.class public Lmiui/maml/elements/LayerScreenElement;
.super Lmiui/maml/elements/ViewHolderScreenElement;
.source "LayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/LayerScreenElement$LayerView;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Layer"


# instance fields
.field private mView:Lmiui/maml/elements/LayerScreenElement$LayerView;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 18
    new-instance v0, Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;-><init>(Lmiui/maml/elements/LayerScreenElement;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    .line 19
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    return-object v0
.end method
