.class Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverSettings.java"


# instance fields
.field final synthetic MO:Lcom/android/vendorsettings/applications/ResolverSettings;

.field private MP:Landroid/util/SparseArray;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/applications/ResolverSettings;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/applications/ResolverSettings;Lcom/android/vendorsettings/applications/ResolverSettings$1;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;-><init>(Lcom/android/vendorsettings/applications/ResolverSettings;)V

    return-void
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 4

    .prologue
    .line 194
    if-eq p1, p2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->aV(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/applications/ResolverSettings;->a(Lcom/android/vendorsettings/applications/ResolverSettings;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 196
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->aV(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/vendorsettings/applications/ResolverSettings;->a(Lcom/android/vendorsettings/applications/ResolverSettings;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 197
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/applications/ResolverSettings;->e(Lcom/android/vendorsettings/applications/ResolverSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 198
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/applications/ResolverSettings;->e(Lcom/android/vendorsettings/applications/ResolverSettings;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-static {v3}, Lcom/android/vendorsettings/applications/ResolverSettings;->f(Lcom/android/vendorsettings/applications/ResolverSettings;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ResolverSettings;->g(Lcom/android/vendorsettings/applications/ResolverSettings;)V

    .line 200
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/applications/ResolverSettings;->h(Lcom/android/vendorsettings/applications/ResolverSettings;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->d(Landroid/util/SparseArray;)V

    .line 202
    :cond_0
    return-void
.end method

.method public aV(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 149
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MP:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MP:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MP:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MP:Landroid/util/SparseArray;

    .line 206
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->notifyDataSetChanged()V

    .line 207
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MP:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->aV(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->aV(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 162
    if-nez p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/ResolverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040120

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 164
    new-instance v0, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;

    invoke-direct {v0, p2}, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;-><init>(Landroid/view/View;)V

    .line 165
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    iget-object v0, v0, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/applications/ResolverSettings;->b(Lcom/android/vendorsettings/applications/ResolverSettings;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->aV(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;

    .line 176
    iget-object v2, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-static {v2}, Lcom/android/vendorsettings/applications/ResolverSettings;->c(Lcom/android/vendorsettings/applications/ResolverSettings;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 177
    iget-object v3, v0, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, v0, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;->MO:Lcom/android/vendorsettings/applications/ResolverSettings;

    invoke-virtual {v4}, Lcom/android/vendorsettings/applications/ResolverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-wide/32 v6, 0x1d4c0

    invoke-static {v4, v1, v2, v6, v7}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, v0, Lcom/android/vendorsettings/applications/ResolverSettings$ViewHolder;->MR:Landroid/view/View;

    new-instance v1, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter$1;-><init>(Lcom/android/vendorsettings/applications/ResolverSettings$ResolverListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    :cond_1
    return-object p2
.end method
