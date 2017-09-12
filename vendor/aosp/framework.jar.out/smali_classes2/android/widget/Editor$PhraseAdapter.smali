.class Landroid/widget/Editor$PhraseAdapter;
.super Landroid/widget/BaseAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhraseAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mPhraseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 6155
    iput-object p1, p0, Landroid/widget/Editor$PhraseAdapter;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6152
    iput-object v0, p0, Landroid/widget/Editor$PhraseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 6153
    iput-object v0, p0, Landroid/widget/Editor$PhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    .line 6156
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/Editor$PhraseAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 6158
    iput-object p2, p0, Landroid/widget/Editor$PhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    .line 6159
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 6163
    iget-object v0, p0, Landroid/widget/Editor$PhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$PhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6168
    iget-object v0, p0, Landroid/widget/Editor$PhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$PhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 6169
    :cond_0
    const/4 v0, 0x0

    .line 6172
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$PhraseAdapter;->mPhraseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 6177
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6182
    const/4 v0, 0x0

    .line 6184
    .local v0, "textView":Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 6185
    iget-object v1, p0, Landroid/widget/Editor$PhraseAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1103000d

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0    # "textView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 6190
    .restart local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Editor$PhraseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6191
    invoke-virtual {p0}, Landroid/widget/Editor$PhraseAdapter;->getCount()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 6193
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 6205
    :goto_1
    return-object v0

    :cond_0
    move-object v0, p2

    .line 6188
    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 6194
    :cond_1
    if-nez p1, :cond_2

    .line 6196
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 6197
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$PhraseAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 6199
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 6202
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1
.end method
