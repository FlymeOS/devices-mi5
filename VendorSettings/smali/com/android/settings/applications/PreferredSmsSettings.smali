.class public Lcom/android/vendorsettings/applications/PreferredSmsSettings;
.super Lmiui/app/ListActivity;
.source "PreferredSmsSettings.java"


# instance fields
.field private KH:Ljava/lang/String;

.field private KI:Ljava/lang/String;

.field private KJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lmiui/app/ListActivity;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/PreferredSmsSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/android/vendorsettings/applications/PreferredSmsSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->au(Ljava/lang/String;)V

    return-void
.end method

.method private at(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private au(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KI:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KI:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;

    .line 137
    invoke-virtual {v0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-super {p0, p1}, Lmiui/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->finish()V

    .line 84
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KI:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KH:Ljava/lang/String;

    .line 63
    const-string v0, "com.android.mms"

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->at(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KJ:Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v5, 0x10040

    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getUserId()I

    move-result v6

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 72
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 75
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 80
    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_3
    new-instance v0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;

    invoke-direct {v0, p0, p0, v4}, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;-><init>(Lcom/android/vendorsettings/applications/PreferredSmsSettings;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 98
    invoke-super/range {p0 .. p5}, Lmiui/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 100
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;

    .line 101
    invoke-virtual {v0, p3}, Lcom/android/vendorsettings/applications/PreferredSmsSettings$SmsApplicationListAdapter;->aW(I)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    .line 102
    iget-object v0, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KI:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 112
    :goto_1
    if-eqz v0, :cond_0

    .line 115
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 116
    const v0, 0x7f0c0d7c

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KJ:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v0, v3}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const v3, 0x7f0c0d7e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KJ:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KJ:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 118
    const v4, 0x7f0c0d80

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->KJ:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 119
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0c0d7f

    new-instance v5, Lcom/android/vendorsettings/applications/PreferredSmsSettings$1;

    invoke-direct {v5, p0, v2}, Lcom/android/vendorsettings/applications/PreferredSmsSettings$1;-><init>(Lcom/android/vendorsettings/applications/PreferredSmsSettings;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)V

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 129
    :cond_2
    iget-object v0, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/applications/PreferredSmsSettings;->au(Ljava/lang/String;)V

    goto :goto_0
.end method
