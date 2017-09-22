.class public Lcom/android/vendorsettings/AppPicker;
.super Lmiui/app/ListActivity;
.source "AppPicker.java"


# static fields
.field private static final bl:Ljava/util/Comparator;


# instance fields
.field private bi:Lcom/android/vendorsettings/F;

.field private bj:Ljava/lang/String;

.field private bk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/android/vendorsettings/E;

    invoke-direct {v0}, Lcom/android/vendorsettings/E;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/AppPicker;->bl:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic L()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/vendorsettings/AppPicker;->bl:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/AppPicker;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/vendorsettings/AppPicker;->bk:Z

    return v0
.end method

.method static synthetic b(Lcom/android/vendorsettings/AppPicker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/vendorsettings/AppPicker;->bj:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/vendorsettings/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.extra.REQUESTIING_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/AppPicker;->bj:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/android/vendorsettings/AppPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.extra.DEBUGGABLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/AppPicker;->bk:Z

    .line 59
    new-instance v0, Lcom/android/vendorsettings/F;

    invoke-direct {v0, p0, p0}, Lcom/android/vendorsettings/F;-><init>(Lcom/android/vendorsettings/AppPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/AppPicker;->bi:Lcom/android/vendorsettings/F;

    .line 60
    iget-object v0, p0, Lcom/android/vendorsettings/AppPicker;->bi:Lcom/android/vendorsettings/F;

    invoke-virtual {v0}, Lcom/android/vendorsettings/F;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/vendorsettings/AppPicker;->finish()V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/AppPicker;->bi:Lcom/android/vendorsettings/F;

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AppPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/vendorsettings/AppPicker;->bi:Lcom/android/vendorsettings/F;

    invoke-virtual {v0, p3}, Lcom/android/vendorsettings/F;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/G;

    .line 80
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 81
    iget-object v2, v0, Lcom/android/vendorsettings/G;->bp:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/vendorsettings/G;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/AppPicker;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/vendorsettings/AppPicker;->finish()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lmiui/app/ListActivity;->onResume()V

    .line 70
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lmiui/app/ListActivity;->onStop()V

    .line 75
    return-void
.end method
