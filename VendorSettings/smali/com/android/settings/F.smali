.class public Lcom/android/vendorsettings/F;
.super Landroid/widget/ArrayAdapter;
.source "AppPicker.java"


# instance fields
.field private final bn:Ljava/util/List;

.field final synthetic bo:Lcom/android/vendorsettings/AppPicker;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/AppPicker;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/vendorsettings/F;->bo:Lcom/android/vendorsettings/AppPicker;

    .line 96
    invoke-direct {p0, p2, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/F;->bn:Ljava/util/List;

    .line 97
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/F;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 99
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 100
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 101
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_1

    .line 99
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p1}, Lcom/android/vendorsettings/AppPicker;->a(Lcom/android/vendorsettings/AppPicker;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    const-string v3, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    :cond_2
    invoke-static {p1}, Lcom/android/vendorsettings/AppPicker;->b(Lcom/android/vendorsettings/AppPicker;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 120
    :try_start_0
    invoke-virtual {p1}, Lcom/android/vendorsettings/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1000

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 122
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 125
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_6

    aget-object v7, v5, v3

    .line 126
    invoke-static {p1}, Lcom/android/vendorsettings/AppPicker;->b(Lcom/android/vendorsettings/AppPicker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    .line 127
    const/4 v3, 0x1

    .line 131
    :goto_3
    if-eqz v3, :cond_0

    .line 139
    :cond_3
    new-instance v3, Lcom/android/vendorsettings/G;

    invoke-direct {v3, p1}, Lcom/android/vendorsettings/G;-><init>(Lcom/android/vendorsettings/AppPicker;)V

    .line 140
    iput-object v0, v3, Lcom/android/vendorsettings/G;->bp:Landroid/content/pm/ApplicationInfo;

    .line 141
    iget-object v0, v3, Lcom/android/vendorsettings/G;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/android/vendorsettings/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/vendorsettings/G;->label:Ljava/lang/CharSequence;

    .line 142
    iget-object v0, p0, Lcom/android/vendorsettings/F;->bn:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/android/vendorsettings/F;->bn:Ljava/util/List;

    invoke-static {}, Lcom/android/vendorsettings/AppPicker;->L()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    new-instance v0, Lcom/android/vendorsettings/G;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/G;-><init>(Lcom/android/vendorsettings/AppPicker;)V

    .line 146
    const v1, 0x7f0c0884

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vendorsettings/G;->label:Ljava/lang/CharSequence;

    .line 147
    iget-object v1, p0, Lcom/android/vendorsettings/F;->bn:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/android/vendorsettings/F;->bn:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/F;->addAll(Ljava/util/Collection;)V

    .line 149
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_6
    move v3, v2

    goto :goto_3
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/F;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/android/vendorsettings/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/vendorsettings/applications/AppViewHolder;

    move-result-object v1

    .line 156
    iget-object v2, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hj:Landroid/view/View;

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/F;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/G;

    .line 158
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hk:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/vendorsettings/G;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v3, v0, Lcom/android/vendorsettings/G;->bp:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hl:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/vendorsettings/G;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/vendorsettings/F;->bo:Lcom/android/vendorsettings/AppPicker;

    invoke-virtual {v5}, Lcom/android/vendorsettings/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/vendorsettings/G;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_0
    iget-object v0, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hm:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    return-object v2

    .line 163
    :cond_0
    iget-object v0, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hl:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
