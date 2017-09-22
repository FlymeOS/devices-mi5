.class public Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# static fields
.field static final azf:Landroid/content/ComponentName;

.field private static azg:Lcom/android/b/b/Q;

.field private static final azh:[I

.field private static final azi:[I

.field private static final azj:[I

.field private static final azk:Lcom/android/vendorsettings/widget/C;

.field private static final azl:Lcom/android/vendorsettings/widget/C;

.field private static final azm:Lcom/android/vendorsettings/widget/C;

.field private static final azn:Lcom/android/vendorsettings/widget/C;

.field private static azo:Lcom/android/vendorsettings/widget/B;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azf:Landroid/content/ComponentName;

    .line 58
    sput-object v3, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azg:Lcom/android/b/b/Q;

    .line 81
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azh:[I

    .line 87
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azi:[I

    .line 93
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azj:[I

    .line 104
    new-instance v0, Lcom/android/vendorsettings/widget/F;

    invoke-direct {v0, v3}, Lcom/android/vendorsettings/widget/F;-><init>(Lcom/android/vendorsettings/widget/w;)V

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azk:Lcom/android/vendorsettings/widget/C;

    .line 105
    new-instance v0, Lcom/android/vendorsettings/widget/x;

    invoke-direct {v0, v3}, Lcom/android/vendorsettings/widget/x;-><init>(Lcom/android/vendorsettings/widget/w;)V

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azl:Lcom/android/vendorsettings/widget/C;

    .line 106
    new-instance v0, Lcom/android/vendorsettings/widget/z;

    invoke-direct {v0, v3}, Lcom/android/vendorsettings/widget/z;-><init>(Lcom/android/vendorsettings/widget/w;)V

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azm:Lcom/android/vendorsettings/widget/C;

    .line 107
    new-instance v0, Lcom/android/vendorsettings/widget/D;

    invoke-direct {v0, v3}, Lcom/android/vendorsettings/widget/D;-><init>(Lcom/android/vendorsettings/widget/w;)V

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azn:Lcom/android/vendorsettings/widget/C;

    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x7f020043
        0x7f020042
        0x7f020044
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x7f020040
        0x7f02003f
        0x7f020041
    .end array-data

    .line 93
    :array_2
    .array-data 4
        0x7f020046
        0x7f020045
        0x7f020047
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 932
    return-void
.end method

.method private static A(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 787
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 788
    const-class v1, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 789
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 791
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 793
    return-object v0
.end method

.method static synthetic a(Lcom/android/b/b/Q;)Lcom/android/b/b/Q;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azg:Lcom/android/b/b/Q;

    return-object p0
.end method

.method private static a(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 9

    .prologue
    const v8, 0x7f130336

    const v7, 0x7f130335

    const v6, 0x7f0c07d9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 728
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azk:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1, p0}, Lcom/android/vendorsettings/widget/C;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 729
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azl:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1, p0}, Lcom/android/vendorsettings/widget/C;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 730
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azm:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1, p0}, Lcom/android/vendorsettings/widget/C;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 731
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azn:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1, p0}, Lcom/android/vendorsettings/widget/C;->a(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 733
    invoke-static {p1}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->cs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    new-array v0, v5, [Ljava/lang/Object;

    const v1, 0x7f0c07da

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 737
    const v0, 0x7f0200ca

    invoke-virtual {p0, v8, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 739
    const v0, 0x7f130337

    const v1, 0x7f020047

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 777
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-static {p1}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->cr(Landroid/content/Context;)I

    move-result v1

    .line 743
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 745
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 747
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 749
    if-le v1, v2, :cond_1

    .line 750
    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0c07db

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 753
    const v2, 0x7f0200cb

    invoke-virtual {p0, v8, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 769
    :goto_1
    if-le v1, v0, :cond_3

    .line 770
    const v0, 0x7f130337

    const v1, 0x7f020047

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 755
    :cond_1
    if-le v1, v0, :cond_2

    .line 756
    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0c07dc

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 759
    const v2, 0x7f0200cc

    invoke-virtual {p0, v8, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 762
    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0c07dd

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 765
    const v2, 0x7f0200cd

    invoke-virtual {p0, v8, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 773
    :cond_3
    const v0, 0x7f130337

    const v1, 0x7f020044

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azh:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azi:[I

    return-object v0
.end method

.method private static co(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 653
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azo:Lcom/android/vendorsettings/widget/B;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lcom/android/vendorsettings/widget/B;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vendorsettings/widget/B;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azo:Lcom/android/vendorsettings/widget/B;

    .line 656
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azo:Lcom/android/vendorsettings/widget/B;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/B;->wM()V

    .line 658
    :cond_0
    return-void
.end method

.method static cp(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 688
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040195

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 690
    const v1, 0x7f130329

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->A(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 692
    const v1, 0x7f130335

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->A(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 695
    const v1, 0x7f130332

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->A(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 698
    const v1, 0x7f13032f

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->A(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 700
    const v1, 0x7f13032c

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->A(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 704
    invoke-static {v0, p0}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->a(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 705
    return-object v0
.end method

.method public static cq(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 714
    invoke-static {p0}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->cp(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 716
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 717
    sget-object v2, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azf:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 718
    invoke-static {p0}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->co(Landroid/content/Context;)V

    .line 719
    return-void
.end method

.method private static cr(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 847
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 852
    :goto_0
    return v0

    .line 850
    :catch_0
    move-exception v0

    .line 852
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cs(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 863
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 865
    if-ne v2, v0, :cond_0

    .line 869
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 865
    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBrightnessMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 869
    goto :goto_0
.end method

.method private ct(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 879
    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 881
    if-eqz v4, :cond_0

    .line 882
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 884
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 885
    const-string v2, "screen_brightness"

    invoke-static {v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    .line 889
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x1120026

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 891
    const-string v2, "screen_brightness_mode"

    invoke-static {v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 897
    :goto_0
    if-ne v2, v3, :cond_1

    .line 898
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 909
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1120026

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 912
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness_mode"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 919
    :goto_2
    if-nez v0, :cond_0

    .line 920
    invoke-interface {v4, v2}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 921
    const-string v0, "screen_brightness"

    invoke-static {v5, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 929
    :cond_0
    :goto_3
    return-void

    .line 900
    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 901
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_1

    .line 902
    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 903
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_1

    .line 906
    :cond_3
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    .line 917
    goto :goto_2

    .line 924
    :catch_0
    move-exception v0

    .line 925
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 926
    :catch_1
    move-exception v0

    .line 927
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move v2, v1

    goto/16 :goto_0
.end method

.method static synthetic wG()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azj:[I

    return-object v0
.end method

.method static synthetic wH()Lcom/android/b/b/Q;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azg:Lcom/android/b/b/Q;

    return-object v0
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 678
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azo:Lcom/android/vendorsettings/widget/B;

    if-eqz v0, :cond_0

    .line 679
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azo:Lcom/android/vendorsettings/widget/B;

    invoke-virtual {v0}, Lcom/android/vendorsettings/widget/B;->stopObserving()V

    .line 680
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azo:Lcom/android/vendorsettings/widget/B;

    .line 682
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 673
    invoke-static {p1}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->co(Landroid/content/Context;)V

    .line 674
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 804
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 805
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 806
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 807
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azk:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/widget/C;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 836
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->cq(Landroid/content/Context;)V

    .line 837
    :cond_1
    return-void

    .line 808
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 809
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azl:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/widget/C;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 810
    :cond_3
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 811
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azm:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/widget/C;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 812
    :cond_4
    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 813
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azn:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1, p2}, Lcom/android/vendorsettings/widget/C;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 814
    :cond_5
    const-string v0, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 817
    if-nez v0, :cond_6

    .line 818
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azk:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/C;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 819
    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 820
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->ct(Landroid/content/Context;)V

    goto :goto_0

    .line 821
    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 822
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azn:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/C;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 823
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 824
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azm:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/C;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 825
    :cond_9
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 826
    sget-object v0, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->azl:Lcom/android/vendorsettings/widget/C;

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/widget/C;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .prologue
    .line 664
    invoke-static {p1}, Lcom/android/vendorsettings/widget/SettingsAppWidgetProvider;->cp(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 666
    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 667
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_0
    return-void
.end method
