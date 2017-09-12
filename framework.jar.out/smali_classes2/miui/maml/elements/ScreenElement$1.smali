.class Lmiui/maml/elements/ScreenElement$1;
.super Ljava/lang/Object;
.source "ScreenElement.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/ScreenElement;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 163
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "Animation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, v1, p1}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    .line 166
    .local v0, "ani":Lmiui/maml/animation/BaseAnimation;
    if-eqz v0, :cond_1

    .line 167
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    iget-object v2, v2, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 170
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement$1;->this$0:Lmiui/maml/elements/ScreenElement;

    iget-object v2, v2, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v0    # "ani":Lmiui/maml/animation/BaseAnimation;
    :cond_1
    return-void
.end method
