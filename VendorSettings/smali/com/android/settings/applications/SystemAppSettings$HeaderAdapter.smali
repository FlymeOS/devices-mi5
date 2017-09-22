.class public Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SystemAppSettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 167
    iput-object p1, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 168
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 169
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 191
    iget-object v1, p2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 192
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 194
    const-wide/32 v2, 0x927c0

    invoke-static {p1, v1, v0, v2, v3}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 203
    if-eqz p2, :cond_4

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;

    move-object v2, v1

    move-object v1, p2

    .line 208
    :goto_0
    if-nez p2, :cond_3

    .line 209
    iget-object v1, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lmiui/R$layout;->preference_value:I

    invoke-virtual {v1, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 210
    sget v1, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 211
    new-instance v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;

    invoke-direct {v3}, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;-><init>()V

    .line 212
    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->title:Landroid/widget/TextView;

    .line 213
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 214
    iget-object v1, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b012c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 215
    iget-object v4, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    iget-object v6, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    iget-object v7, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b00dc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 220
    iget-object v4, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 221
    iget-object v4, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    iget-object v1, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 224
    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_0

    .line 226
    sget v1, Lmiui/R$id;->arrow_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 230
    :goto_1
    const-string v1, "system_app"

    iget-object v4, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 232
    # getter for: Lcom/android/settings/applications/SystemAppSettings;->Pl:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings/applications/SystemAppSettings;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 233
    if-eqz v1, :cond_2

    const-string v4, "system_app"

    iget-object v5, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 234
    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 239
    :cond_1
    :goto_2
    iget-object v1, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, v3, Lcom/android/settings/applications/SystemAppSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v0}, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->c(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    return-object v2

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/applications/SystemAppSettings;->b(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_2

    :cond_3
    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto/16 :goto_0
.end method
