.class public Lcom/android/vendorsettings/AccessControlSetApp;
.super Lmiui/preference/PreferenceActivity;
.source "AccessControlSetApp.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final o:Ljava/util/HashSet;


# instance fields
.field private b:Landroid/security/ChooseLockSettingsHelper;

.field private i:Landroid/content/pm/PackageManager;

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;

.field private l:Z

.field private m:Lmiui/security/SecurityManager;

.field private mHandler:Landroid/os/Handler;

.field private final n:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    .line 73
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.fileexplorer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.apps.tag"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.networkassistant"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.talk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.antispam"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.miui.video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "net.cactii.flash2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.payment"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.mipay.wallet"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.jr"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    const-string v1, "com.htc.album"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    .line 51
    new-instance v0, Lcom/android/vendorsettings/e;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/e;-><init>(Lcom/android/vendorsettings/AccessControlSetApp;)V

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->n:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/AccessControlSetApp;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->k:Landroid/os/Handler;

    new-instance v1, Lcom/android/vendorsettings/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/vendorsettings/g;-><init>(Lcom/android/vendorsettings/AccessControlSetApp;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method static synthetic b(Lcom/android/vendorsettings/AccessControlSetApp;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/vendorsettings/AccessControlSetApp;->h()V

    return-void
.end method

.method static synthetic c(Lcom/android/vendorsettings/AccessControlSetApp;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->n:Ljava/util/Comparator;

    return-object v0
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AccessControlSetApp;->addPreferencesFromResource(I)V

    .line 155
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 161
    if-eqz v0, :cond_0

    .line 165
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 166
    and-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_1

    sget-object v4, Lcom/android/vendorsettings/AccessControlSetApp;->o:Ljava/util/HashSet;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/android/vendorsettings/AccessControlSetApp;->m:Lmiui/security/SecurityManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_3
    invoke-direct {p0, v1, v7}, Lcom/android/vendorsettings/AccessControlSetApp;->a(Ljava/util/ArrayList;Z)V

    .line 178
    invoke-direct {p0, v2, v6}, Lcom/android/vendorsettings/AccessControlSetApp;->a(Ljava/util/ArrayList;Z)V

    .line 179
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 244
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 245
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlSetApp;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 122
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "security"

    invoke-virtual {p0, v0}, Lcom/android/vendorsettings/AccessControlSetApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->m:Lmiui/security/SecurityManager;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    const-string v0, "password_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    .line 129
    :cond_0
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->b:Landroid/security/ChooseLockSettingsHelper;

    .line 130
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/AccessControlSetApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->i:Landroid/content/pm/PackageManager;

    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccessControlSetApp.Loader"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->j:Landroid/os/HandlerThread;

    .line 137
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/vendorsettings/AccessControlSetApp;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->k:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->mHandler:Landroid/os/Handler;

    .line 140
    iget-boolean v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/android/vendorsettings/AccessControlSetApp;->h()V

    .line 150
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/vendorsettings/f;

    invoke-direct {v1, p0}, Lcom/android/vendorsettings/f;-><init>(Lcom/android/vendorsettings/AccessControlSetApp;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 255
    check-cast p2, Ljava/lang/Boolean;

    .line 256
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/android/vendorsettings/AccessControlSetApp;->m:Lmiui/security/SecurityManager;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    .line 258
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/AccessControlSetApp;->m:Lmiui/security/SecurityManager;

    invoke-virtual {v1, v0}, Lmiui/security/SecurityManager;->removeAccessControlPass(Ljava/lang/String;)V

    .line 259
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/vendorsettings/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/vendorsettings/AccessControlSetApp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 224
    :goto_0
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onStart()V

    .line 225
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onStop()V

    .line 230
    iget-boolean v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/AccessControlSetApp;->l:Z

    .line 233
    :cond_0
    return-void
.end method
