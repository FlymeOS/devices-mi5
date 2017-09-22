.class public Lcom/android/settings/applications/SystemAppSettings;
.super Lcom/android/settings/BaseListFragment;
.source "SystemAppSettings.java"


# static fields
.field private static Pl:Ljava/util/HashMap;


# instance fields
.field private Pm:Lcom/android/settings/applications/SystemAppSettings$LoadIconTask;

.field private Pn:Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/applications/SystemAppSettings;->Pl:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/BaseListFragment;-><init>()V

    .line 246
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/SystemAppSettings;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 41
    sput-object p0, Lcom/android/settings/applications/SystemAppSettings;->Pl:Ljava/util/HashMap;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 132
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 133
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 134
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings/applications/SystemAppSettings;->Pl:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/android/settings/applications/SystemAppSettings;->a(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V

    return-void
.end method

.method private c(Ljava/util/List;I)I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.APP_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 80
    const/4 v0, -0x1

    .line 81
    const/16 v2, 0x3e8

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v4, p0, Lcom/android/settings/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/payment/PaymentManager;->isMibiServiceDisabled()Z

    move-result v4

    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 85
    iget-boolean v6, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v6, :cond_0

    .line 89
    if-lt v1, v2, :cond_1

    iget v1, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v1, v2, :cond_1

    .line 90
    if-nez v4, :cond_1

    .line 91
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 92
    const v6, 0x7f0c0f44

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/SystemAppSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 93
    const-wide/32 v6, 0x7f1303b1

    iput-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 94
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.xiaomi.action.VIEW_MILI_CENTER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 95
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "miui.intent.action.APP_SETTINGS"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    new-instance v6, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v6}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 103
    const-string v7, "system_app"

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 104
    iput-object v1, v6, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 105
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.phone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    const-wide/16 v8, -0x3e8

    iput-wide v8, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 109
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/android/settings/applications/SystemAppSettings;->Pl:Ljava/util/HashMap;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    sget-object v1, Lcom/android/settings/applications/SystemAppSettings;->Pl:Ljava/util/HashMap;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_3
    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    move v1, v0

    .line 116
    goto/16 :goto_0

    .line 119
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 120
    add-int/lit8 v1, p2, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 119
    add-int/lit8 v0, v0, -0x1

    move p2, v1

    goto :goto_1

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->Pm:Lcom/android/settings/applications/SystemAppSettings$LoadIconTask;

    if-nez v0, :cond_6

    .line 124
    new-instance v0, Lcom/android/settings/applications/SystemAppSettings$LoadIconTask;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/SystemAppSettings$LoadIconTask;-><init>(Lcom/android/settings/applications/SystemAppSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->Pm:Lcom/android/settings/applications/SystemAppSettings$LoadIconTask;

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->Pm:Lcom/android/settings/applications/SystemAppSettings$LoadIconTask;

    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/SystemAppSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    :cond_6
    return p2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/applications/SystemAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/SystemAppSettings;->c(Ljava/util/List;I)I

    .line 59
    new-instance v1, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;

    iget-object v2, p0, Lcom/android/settings/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/applications/SystemAppSettings;->Pn:Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;

    .line 60
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->Pn:Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SystemAppSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Lcom/android/settings/BaseListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->Pn:Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/SystemAppSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 67
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f1303b1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lmiui/payment/PaymentManager;->gotoMiliCenter(Landroid/app/Activity;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-wide v2, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v4, -0x3e8

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/SystemAppSettings;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0dd5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SystemAppSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
