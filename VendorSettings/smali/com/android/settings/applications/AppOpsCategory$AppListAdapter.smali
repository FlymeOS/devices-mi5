.class public Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppOpsCategory.java"


# instance fields
.field private final Fv:Lcom/android/vendorsettings/applications/AppOpsState;

.field private final mInflater:Landroid/view/LayoutInflater;

.field mList:Ljava/util/List;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/vendorsettings/applications/AppOpsState;)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->mResources:Landroid/content/res/Resources;

    .line 255
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 256
    iput-object p2, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    .line 257
    return-void
.end method


# virtual methods
.method public az(I)Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->az(I)Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    if-nez p2, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040011

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 291
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->az(I)Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;

    move-result-object v1

    .line 292
    const v0, 0x7f13001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;->jJ()Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    const v0, 0x7f13001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;->jJ()Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vendorsettings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    const v0, 0x7f130022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->Fv:Lcom/android/vendorsettings/applications/AppOpsState;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;->a(Lcom/android/vendorsettings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const v0, 0x7f130023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2, v3}, Lcom/android/vendorsettings/applications/AppOpsState$AppOpEntry;->a(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-object p2
.end method

.method public s(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->mList:Ljava/util/List;

    .line 261
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/AppOpsCategory$AppListAdapter;->notifyDataSetChanged()V

    .line 262
    return-void
.end method
