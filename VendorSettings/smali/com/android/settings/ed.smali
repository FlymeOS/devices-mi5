.class public Lcom/android/vendorsettings/ed;
.super Landroid/widget/ArrayAdapter;
.source "MiuiAppPicker.java"


# instance fields
.field private final bn:Ljava/util/List;

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic qc:Lcom/android/vendorsettings/MiuiAppPicker;


# direct methods
.method public constructor <init>(Lcom/android/vendorsettings/MiuiAppPicker;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/vendorsettings/ed;->qc:Lcom/android/vendorsettings/MiuiAppPicker;

    .line 94
    invoke-direct {p0, p2, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/ed;->bn:Ljava/util/List;

    .line 95
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/vendorsettings/ed;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 97
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 98
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 99
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_1

    .line 97
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 105
    :cond_1
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    :cond_2
    new-instance v4, Lcom/android/vendorsettings/ee;

    invoke-direct {v4, p1}, Lcom/android/vendorsettings/ee;-><init>(Lcom/android/vendorsettings/MiuiAppPicker;)V

    .line 110
    iput-object v0, v4, Lcom/android/vendorsettings/ee;->bp:Landroid/content/pm/ApplicationInfo;

    .line 111
    iget-object v0, v4, Lcom/android/vendorsettings/ee;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/android/vendorsettings/MiuiAppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/vendorsettings/ee;->label:Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p0, Lcom/android/vendorsettings/ed;->bn:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/ed;->bn:Ljava/util/List;

    invoke-static {}, Lcom/android/vendorsettings/MiuiAppPicker;->L()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    new-instance v0, Lcom/android/vendorsettings/ee;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/ee;-><init>(Lcom/android/vendorsettings/MiuiAppPicker;)V

    .line 116
    const v1, 0x7f0c0884

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vendorsettings/ee;->label:Ljava/lang/CharSequence;

    .line 117
    iget-object v1, p0, Lcom/android/vendorsettings/ed;->bn:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/android/vendorsettings/ed;->bn:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ed;->addAll(Ljava/util/Collection;)V

    .line 119
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 125
    iget-object v0, p0, Lcom/android/vendorsettings/ed;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/android/vendorsettings/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/vendorsettings/applications/AppViewHolder;

    move-result-object v1

    .line 126
    iget-object v2, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hj:Landroid/view/View;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/ed;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/ee;

    .line 128
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hk:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/vendorsettings/ee;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, v0, Lcom/android/vendorsettings/ee;->bp:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hl:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/vendorsettings/ee;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/vendorsettings/ed;->qc:Lcom/android/vendorsettings/MiuiAppPicker;

    invoke-virtual {v5}, Lcom/android/vendorsettings/MiuiAppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hl:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v3, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/vendorsettings/ee;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    iget-object v0, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hm:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    return-object v2

    .line 134
    :cond_0
    iget-object v0, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hl:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->Hl:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, v1, Lcom/android/vendorsettings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
