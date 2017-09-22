.class Lcom/android/vendorsettings/ShortcutHelper;
.super Ljava/lang/Object;
.source "SettingsApplication.java"


# static fields
.field private static Ai:Lcom/android/vendorsettings/ShortcutHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/vendorsettings/ShortcutHelper;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method public static V(Landroid/content/Context;)Lcom/android/vendorsettings/ShortcutHelper;
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/android/vendorsettings/ShortcutHelper;->Ai:Lcom/android/vendorsettings/ShortcutHelper;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/vendorsettings/ShortcutHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/ShortcutHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/vendorsettings/ShortcutHelper;->Ai:Lcom/android/vendorsettings/ShortcutHelper;

    .line 190
    :cond_0
    sget-object v0, Lcom/android/vendorsettings/ShortcutHelper;->Ai:Lcom/android/vendorsettings/ShortcutHelper;

    return-object v0
.end method

.method private b(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 293
    sget-object v1, Lcom/android/vendorsettings/hI;->Aj:[I

    invoke-virtual {p1}, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 333
    :goto_0
    return-object v0

    .line 295
    :pswitch_0
    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.miui.optimizecenter.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 301
    :pswitch_1
    const-string v1, "android.intent.action.VIEW_DATA_USAGE_SUMMARY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.networkassistant"

    const-string v3, "com.miui.networkassistant.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 307
    :pswitch_2
    const-string v1, "android.intent.action.SET_FIREWALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.antispam"

    const-string v3, "com.miui.antispam.ui.activity.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 313
    :pswitch_3
    const-string v1, "com.miui.powercenter.PowerCenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.miui.powercenter.PowerCenter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 319
    :pswitch_4
    const-string v1, "miui.intent.action.VIRUS_SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.miui.viruscenter.activity.VirusScanAppActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 325
    :pswitch_5
    const-string v1, "miui.intent.action.PERM_CENTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.miui.securitycenter.permission.PermMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 237
    .line 238
    const/4 v0, -0x1

    .line 239
    sget-object v1, Lcom/android/vendorsettings/hI;->Aj:[I

    invoke-virtual {p1}, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    .line 274
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/ShortcutHelper;->b(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;)Landroid/content/Intent;

    move-result-object v3

    .line 275
    if-nez v3, :cond_0

    .line 287
    :goto_1
    return-object v2

    .line 242
    :pswitch_0
    const-string v1, "com.android.settings:string/cleaner"

    .line 243
    const v0, 0x7f020124

    .line 244
    goto :goto_0

    .line 247
    :pswitch_1
    const-string v1, "com.android.settings:string/network_assistant"

    .line 248
    const v0, 0x7f020121

    .line 249
    goto :goto_0

    .line 252
    :pswitch_2
    const-string v1, "com.android.settings:string/anti_spam"

    .line 253
    const v0, 0x7f02011f

    .line 254
    goto :goto_0

    .line 257
    :pswitch_3
    const-string v1, "com.android.settings:string/power_mgr"

    .line 258
    const v0, 0x7f020122

    .line 259
    goto :goto_0

    .line 262
    :pswitch_4
    const-string v1, "com.android.settings:string/virus_scan"

    .line 263
    const v0, 0x7f020126

    .line 264
    goto :goto_0

    .line 267
    :pswitch_5
    const-string v1, "com.android.settings:string/permission_mgr"

    .line 268
    const v0, 0x7f020120

    .line 269
    goto :goto_0

    .line 279
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    const-string v4, "duplicate"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/vendorsettings/ShortcutHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 283
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;)V
    .locals 2

    .prologue
    .line 232
    const-string v0, "com.miui.home.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {p0, p1, v0}, Lcom/android/vendorsettings/ShortcutHelper;->a(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/android/vendorsettings/ShortcutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    return-void
.end method
