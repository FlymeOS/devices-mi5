.class Lmiui/maml/data/ContentProviderBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# static fields
.field public static final BLOB_BITMAP:I = 0x3e9


# instance fields
.field public mBlocked:Z

.field public mColumn:Ljava/lang/String;

.field private mImageVar:Lmiui/maml/elements/ImageScreenElement;

.field private mNoImageElement:Z

.field public mRow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 159
    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 160
    const-string v0, "row"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    .line 161
    return-void
.end method


# virtual methods
.method public getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 195
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lmiui/maml/elements/ImageScreenElement;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ImageScreenElement;

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lmiui/maml/elements/ImageScreenElement;

    .line 197
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lmiui/maml/elements/ImageScreenElement;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    .line 199
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mImageVar:Lmiui/maml/elements/ImageScreenElement;

    return-object v0

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lmiui/maml/data/VariableBinder$Variable;->parseType(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "ret":I
    const-string v1, "blob.bitmap"

    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/16 v0, 0x3e9

    .line 183
    :goto_0
    return v0

    .line 181
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/data/ContentProviderBinder$Variable;->mNoImageElement:Z

    goto :goto_0
.end method

.method public setNull(Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0, v1}, Lmiui/maml/data/ContentProviderBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
