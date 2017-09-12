.class Lmiui/maml/elements/ListScreenElement$ListItemElement;
.super Lmiui/maml/elements/ElementGroup;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemElement"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Item"


# instance fields
.field private mDataIndex:I

.field private mDivider:Lmiui/maml/elements/AnimatedScreenElement;

.field protected mNode:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 131
    iput-object p1, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    .line 132
    const-string v1, "divider"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 133
    .local v0, "se":Lmiui/maml/elements/ScreenElement;
    instance-of v1, v0, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 134
    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lmiui/maml/elements/AnimatedScreenElement;

    .line 135
    invoke-virtual {p0, v0}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->removeElement(Lmiui/maml/elements/ScreenElement;)V

    .line 136
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lmiui/maml/elements/AnimatedScreenElement;

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ListScreenElement$ListItemElement;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .line 139
    :cond_0
    sget-object v1, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v1, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 140
    return-void
.end method


# virtual methods
.method public getDataIndex()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    return v0
.end method

.method public setDataIndex(I)V
    .locals 2
    .param p1, "dataIndex"    # I

    .prologue
    .line 119
    iput p1, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 120
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v0, :cond_0

    .line 121
    if-gtz p1, :cond_1

    .line 122
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->show(Z)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lmiui/maml/elements/AnimatedScreenElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->show(Z)V

    goto :goto_0
.end method
