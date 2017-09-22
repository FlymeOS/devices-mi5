.class public Lcom/android/settings/KeyguardShortcutChooserSettings;
.super Lcom/android/settings/BaseListFragment;
.source "KeyguardShortcutChooserSettings.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mList:Ljava/util/List;

.field private oC:Lcom/android/settings/dE;

.field private oD:Z

.field private oE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->mList:Ljava/util/List;

    .line 64
    return-void
.end method

.method private R()V
    .locals 6

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 45
    new-instance v4, Lcom/android/settings/dD;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/android/settings/dD;-><init>(Lcom/android/settings/dC;)V

    .line 46
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v4, Lcom/android/settings/dD;->icon:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/android/settings/dD;->label:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings/dD;->oF:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->mList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/KeyguardShortcutChooserSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->oE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/KeyguardShortcutChooserSettings;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/KeyguardShortcutChooserSettings;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/KeyguardShortcutChooserSettings;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->oD:Z

    return v0
.end method

.method static synthetic d(Lcom/android/settings/KeyguardShortcutChooserSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->oE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/KeyguardShortcutChooserSettings;)Lcom/android/settings/dE;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->oC:Lcom/android/settings/dE;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/KeyguardShortcutChooserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->mActivity:Landroid/app/Activity;

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/KeyguardShortcutChooserSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "left_shortcut"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->oD:Z

    .line 30
    iget-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->oD:Z

    if-eqz v0, :cond_0

    const-string v0, "keyguard_left_function_chooser"

    :goto_0
    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->oE:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcom/android/settings/KeyguardShortcutChooserSettings;->R()V

    .line 35
    new-instance v0, Lcom/android/settings/dE;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dE;-><init>(Lcom/android/settings/KeyguardShortcutChooserSettings;Lcom/android/settings/dC;)V

    iput-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->oC:Lcom/android/settings/dE;

    .line 36
    iget-object v0, p0, Lcom/android/settings/KeyguardShortcutChooserSettings;->oC:Lcom/android/settings/dE;

    invoke-virtual {p0, v0}, Lcom/android/settings/KeyguardShortcutChooserSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    return-void

    .line 30
    :cond_0
    const-string v0, "keyguard_right_function_chooser"

    goto :goto_0
.end method
