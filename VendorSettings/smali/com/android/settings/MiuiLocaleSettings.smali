.class public Lcom/android/settings/MiuiLocaleSettings;
.super Lcom/android/settings/BaseListFragment;
.source "MiuiLocaleSettings.java"


# instance fields
.field private mk:Landroid/widget/ArrayAdapter;

.field private rj:Ljava/lang/String;

.field private rk:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;-><init>()V

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiLocaleSettings;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiLocaleSettings;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 96
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :goto_1
    return v0

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_1
    array-length v0, p1

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings/MiuiLocaleSettings;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/MiuiLocaleSettings;->fg()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/MiuiLocaleSettings;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->rk:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 122
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 123
    new-instance v2, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v3, Lcom/android/settings/ez;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/ez;-><init>(Lcom/android/settings/MiuiLocaleSettings;Lcom/android/settings/ev;)V

    .line 125
    aget-object v4, p1, v0

    iput-object v4, v3, Lcom/android/settings/ez;->rn:Ljava/lang/String;

    .line 126
    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/settings/ez;->displayName:Ljava/lang/String;

    .line 127
    iget-object v2, v3, Lcom/android/settings/ez;->rn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/MiuiLocaleSettings;->rj:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const v2, 0x7f0c0e0e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, v3, Lcom/android/settings/ez;->displayName:Ljava/lang/String;

    aput-object v6, v4, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/MiuiLocaleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/settings/ez;->displayName:Ljava/lang/String;

    .line 129
    invoke-virtual {v5, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 122
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_1
    new-instance v0, Lcom/android/settings/ey;

    invoke-virtual {p0}, Lcom/android/settings/MiuiLocaleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04009c

    const v4, 0x7f130123

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ey;-><init>(Lcom/android/settings/MiuiLocaleSettings;Landroid/content/Context;IILjava/util/List;)V

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiLocaleSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->rj:Ljava/lang/String;

    return-object v0
.end method

.method private ff()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/MiuiLocaleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->rk:Landroid/app/ProgressDialog;

    .line 88
    iget-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->rk:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0e0f

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiLocaleSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->rk:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->rk:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->rk:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 92
    return-void
.end method

.method private fg()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/MiuiLocaleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/MiuiLocaleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ex;

    invoke-direct {v1, p0}, Lcom/android/settings/ex;-><init>(Lcom/android/settings/MiuiLocaleSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->rj:Ljava/lang/String;

    .line 42
    invoke-static {}, Lmiui/os/MiuiInit;->getCustVariants()[Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/MiuiLocaleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/android/settings/ev;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/ev;-><init>(Lcom/android/settings/MiuiLocaleSettings;[Ljava/lang/String;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiLocaleSettings;->b([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->mk:Landroid/widget/ArrayAdapter;

    .line 54
    iget-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->mk:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiLocaleSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiLocaleSettings;->fg()V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 62
    invoke-super/range {p0 .. p5}, Lcom/android/settings/BaseListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->mk:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ez;

    iget-object v0, v0, Lcom/android/settings/ez;->rn:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/android/settings/MiuiLocaleSettings;->rj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iput-object v0, p0, Lcom/android/settings/MiuiLocaleSettings;->rj:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/android/settings/MiuiLocaleSettings;->mk:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 67
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/MiuiInit;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-direct {p0}, Lcom/android/settings/MiuiLocaleSettings;->ff()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/MiuiLocaleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 74
    new-instance v0, Lcom/android/settings/ew;

    invoke-direct {v0, p0}, Lcom/android/settings/ew;-><init>(Lcom/android/settings/MiuiLocaleSettings;)V

    invoke-virtual {v0}, Lcom/android/settings/ew;->start()V

    .line 84
    :cond_0
    return-void
.end method
