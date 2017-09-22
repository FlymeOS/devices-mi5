.class public Lcom/android/vendorsettings/ActivityPicker;
.super Lcom/android/internal/app/AlertActivity;
.source "ActivityPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private y:Lcom/android/vendorsettings/l;

.field private z:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 433
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActivityPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 184
    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 186
    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v1, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    .line 189
    :goto_0
    if-ge v1, v4, :cond_0

    .line 190
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 191
    new-instance v5, Lcom/android/vendorsettings/m;

    invoke-direct {v5, p0, v2, v0}, Lcom/android/vendorsettings/m;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method protected e(I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/vendorsettings/ActivityPicker;->y:Lcom/android/vendorsettings/l;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/m;

    .line 130
    iget-object v1, p0, Lcom/android/vendorsettings/ActivityPicker;->z:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/m;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getItems()Ljava/util/List;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActivityPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActivityPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 146
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 148
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 151
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 152
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 153
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    :try_start_0
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    .line 159
    iget-object v8, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 161
    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    :goto_1
    new-instance v8, Lcom/android/vendorsettings/m;

    invoke-direct {v8, p0, v0, v1}, Lcom/android/vendorsettings/m;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    move-object v1, v3

    goto :goto_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/ActivityPicker;->z:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/vendorsettings/ActivityPicker;->z:Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/android/vendorsettings/ActivityPicker;->a(Landroid/content/Intent;Ljava/util/List;)V

    .line 176
    :cond_1
    return-object v5
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/ActivityPicker;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActivityPicker;->finish()V

    .line 122
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0, p2}, Lcom/android/vendorsettings/ActivityPicker;->e(I)Landroid/content/Intent;

    move-result-object v0

    .line 112
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/vendorsettings/ActivityPicker;->setResult(ILandroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActivityPicker;->finish()V

    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActivityPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 78
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 79
    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 80
    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/vendorsettings/ActivityPicker;->z:Landroid/content/Intent;

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/ActivityPicker;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 88
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 89
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 92
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActivityPicker;->getItems()Ljava/util/List;

    move-result-object v1

    .line 100
    new-instance v2, Lcom/android/vendorsettings/l;

    invoke-direct {v2, p0, v1}, Lcom/android/vendorsettings/l;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/vendorsettings/ActivityPicker;->y:Lcom/android/vendorsettings/l;

    .line 101
    iget-object v1, p0, Lcom/android/vendorsettings/ActivityPicker;->y:Lcom/android/vendorsettings/l;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 103
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActivityPicker;->setupAlert()V

    .line 104
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/vendorsettings/ActivityPicker;->z:Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/android/vendorsettings/ActivityPicker;->z:Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/ActivityPicker;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1
.end method
