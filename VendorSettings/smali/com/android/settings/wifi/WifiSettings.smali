.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/b/e/b;
.implements Lcom/android/b/e/h;
.implements Lcom/android/settings/search/k;


# static fields
.field private static aDI:Z

.field public static final ig:Lcom/android/settings/search/l;


# instance fields
.field private Cm:Landroid/widget/TextView;

.field private aAw:Lcom/android/b/e/a;

.field private aBF:Lcom/android/settings/wifi/am;

.field private aBG:Lcom/android/b/e/a;

.field private aBH:Landroid/os/Bundle;

.field protected aBI:Lcom/android/settings/wifi/c;

.field protected final aDG:Ljava/lang/String;

.field protected aDH:Z

.field protected aDJ:Landroid/net/wifi/WifiManager$ActionListener;

.field protected aDK:Landroid/net/wifi/WifiManager$ActionListener;

.field protected aDL:Landroid/net/wifi/WifiManager$ActionListener;

.field protected aDM:Lcom/android/settings/wifi/B;

.field private aDN:Lcom/android/settings/wifi/bd;

.field private aDO:Landroid/widget/ProgressBar;

.field private aDP:Z

.field private aDQ:Z

.field private aDR:Z

.field private aDS:Landroid/os/Bundle;

.field protected aDT:Lcom/android/settings/wifi/L;

.field private aDU:Ljava/lang/String;

.field private aDV:Landroid/os/HandlerThread;

.field protected je:Landroid/net/wifi/WifiManager;

.field protected uG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1003
    new-instance v0, Lcom/android/settings/wifi/av;

    invoke-direct {v0}, Lcom/android/settings/wifi/av;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->ig:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 194
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v0, "nearby_wifi"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDG:Ljava/lang/String;

    .line 195
    return-void
.end method

.method private a(Lcom/android/b/e/a;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 603
    if-eqz p1, :cond_1

    .line 604
    invoke-virtual {p1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiSettings;->j(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/b/e/a;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 608
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 609
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 613
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_0

    .line 615
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 620
    :cond_0
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 621
    invoke-virtual {p1}, Lcom/android/b/e/a;->AC()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02c2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 640
    :goto_1
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBF:Lcom/android/settings/wifi/am;

    if-eqz v0, :cond_2

    .line 631
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 632
    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->aBF:Lcom/android/settings/wifi/am;

    .line 636
    :cond_2
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->aBG:Lcom/android/b/e/a;

    .line 637
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->aDR:Z

    .line 639
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_1

    .line 617
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static j(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    .prologue
    .line 1039
    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->k(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static k(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1050
    if-nez p1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return v1

    .line 1054
    :cond_1
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1059
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1060
    const-string v4, "android.software.device_admin"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    .line 1061
    goto :goto_0

    .line 1065
    :cond_2
    if-eqz v0, :cond_5

    .line 1066
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_5

    .line 1069
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 1071
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 1077
    :goto_1
    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1082
    const-string v3, "wifi_device_owner_configs_lockdown"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 1084
    :goto_2
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1071
    goto :goto_1

    .line 1072
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1082
    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private yu()V
    .locals 6

    .prologue
    const v5, 0x7f0c02fa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 775
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->Cm:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 785
    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    .line 788
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hj()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_4

    .line 793
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->dB(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 785
    goto :goto_1

    .line 796
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 798
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const v1, 0x7f0c02e3

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 800
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->Cm:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/wifi/au;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/au;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-static {v1, v0, v2}, Lcom/android/settings/dI;->a(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/dK;)Z

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->isWifiEnabled()Z

    move-result v0

    .line 402
    const/4 v1, 0x6

    const v2, 0x7f0c0762

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 412
    return-void
.end method

.method a(Lcom/android/settings/wifi/ag;)V
    .locals 3

    .prologue
    .line 889
    invoke-virtual {p1}, Lcom/android/settings/wifi/ag;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 891
    if-nez v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->i(Landroid/net/wifi/WifiConfiguration;)V

    .line 905
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->AM()V

    .line 906
    return-void

    .line 896
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/wifi/ag;->yd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 897
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->aDK:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 899
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->aDK:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 900
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    if-eqz v1, :cond_0

    .line 901
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->i(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method protected ay()I
    .locals 1

    .prologue
    .line 990
    const v0, 0x7f0c09b0

    return v0
.end method

.method protected bE(Z)V
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 874
    :cond_0
    return-void
.end method

.method protected bL(Z)V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDO:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDO:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 835
    :cond_0
    return-void

    .line 833
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c(Lcom/android/b/e/a;)V
    .locals 1

    .prologue
    .line 995
    invoke-virtual {p1}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/a;

    invoke-virtual {v0}, Lcom/android/settings/wifi/a;->refresh()V

    .line 996
    return-void
.end method

.method public d(Lcom/android/b/e/a;)V
    .locals 1

    .prologue
    .line 1000
    invoke-virtual {p1}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/a;

    invoke-virtual {v0}, Lcom/android/settings/wifi/a;->wQ()V

    .line 1001
    return-void
.end method

.method protected dB(I)V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Cm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Cm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 825
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 829
    :cond_1
    return-void
.end method

.method public dC(I)V
    .locals 1

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 844
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 855
    :goto_0
    return-void

    .line 846
    :pswitch_0
    const v0, 0x7f0c02d5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dB(I)V

    .line 847
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->bL(Z)V

    goto :goto_0

    .line 851
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->yu()V

    .line 852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->bL(Z)V

    goto :goto_0

    .line 844
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected i(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 933
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDJ:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 934
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 230
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 232
    new-instance v0, Lcom/android/settings/wifi/L;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->aDV:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/L;-><init>(Landroid/content/Context;Lcom/android/b/e/h;Landroid/os/Looper;ZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->AQ()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->je:Landroid/net/wifi/WifiManager;

    .line 236
    new-instance v0, Lcom/android/settings/wifi/ar;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ar;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDJ:Landroid/net/wifi/WifiManager$ActionListener;

    .line 251
    new-instance v0, Lcom/android/settings/wifi/as;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/as;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDK:Landroid/net/wifi/WifiManager$ActionListener;

    .line 266
    new-instance v0, Lcom/android/settings/wifi/at;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/at;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDL:Landroid/net/wifi/WifiManager$ActionListener;

    .line 281
    if-eqz p1, :cond_1

    .line 282
    const-string v0, "edit_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDR:Z

    .line 283
    const-string v0, "modify_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDQ:Z

    .line 284
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBH:Landroid/os/Bundle;

    .line 289
    :cond_0
    const-string v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    const-string v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDS:Landroid/os/Bundle;

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 298
    const-string v0, "wifi_enable_next_on_connect"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDP:Z

    .line 300
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDP:Z

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 304
    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->bE(Z)V

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->yt()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->Cm:Landroid/widget/TextView;

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 314
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 316
    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDU:Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->xA()V

    .line 320
    :cond_3
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 878
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->yv()V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBF:Lcom/android/settings/wifi/am;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBF:Lcom/android/settings/wifi/am;

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->yn()Lcom/android/settings/wifi/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/ag;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 542
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    if-nez v1, :cond_0

    .line 543
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 573
    :goto_0
    return v0

    .line 545
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 573
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 547
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AH()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->i(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AA()I

    move-result v1

    if-nez v1, :cond_2

    .line 551
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AI()V

    .line 552
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->i(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 554
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDQ:Z

    .line 555
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/b/e/a;Z)V

    goto :goto_0

    .line 560
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->yv()V

    goto :goto_0

    .line 564
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDQ:Z

    .line 565
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/b/e/a;Z)V

    goto :goto_0

    .line 569
    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_setup_wizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->uG:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_settings_keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDH:Z

    .line 216
    new-instance v0, Lcom/android/settings/wifi/c;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/c;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBI:Lcom/android/settings/wifi/c;

    .line 218
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDV:Landroid/os/HandlerThread;

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDV:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 220
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 504
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 508
    instance-of v1, v0, Lcom/android/settings/wifi/a;

    if-eqz v1, :cond_1

    .line 509
    check-cast v0, Lcom/android/settings/wifi/a;

    invoke-virtual {v0}, Lcom/android/settings/wifi/a;->wP()Lcom/android/b/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    .line 510
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AC()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->isConnectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x7

    const v1, 0x7f0c02f5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiSettings;->j(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    :cond_1
    :goto_0
    return-void

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AH()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 525
    :cond_3
    const/16 v0, 0x8

    const v1, 0x7f0c02f7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 527
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    const/16 v0, 0x9

    const v1, 0x7f0c02f8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AA()I

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    const/16 v0, 0xa

    const v1, 0x7f0c02f9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 644
    packed-switch p1, :pswitch_data_0

    .line 681
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 646
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->aBG:Lcom/android/b/e/a;

    .line 647
    if-nez v3, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBH:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 649
    new-instance v3, Lcom/android/b/e/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aBH:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/b/e/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 651
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->aBG:Lcom/android/b/e/a;

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBH:Landroid/os/Bundle;

    .line 657
    :cond_0
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    .line 658
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->j(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/settings/wifi/am;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->aDR:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->aDQ:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/am;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/b/e/a;ZZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBF:Lcom/android/settings/wifi/am;

    .line 663
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBF:Lcom/android/settings/wifi/am;

    goto :goto_0

    :cond_2
    move v7, v6

    .line 658
    goto :goto_1

    .line 665
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 667
    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 669
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    if-eqz v0, :cond_4

    .line 670
    new-instance v0, Lcom/android/settings/wifi/bd;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v2}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v3}, Lcom/android/b/e/a;->AA()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/bd;-><init>(Landroid/content/Context;IILandroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDN:Lcom/android/settings/wifi/bd;

    .line 679
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDN:Lcom/android/settings/wifi/bd;

    goto :goto_0

    .line 674
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDS:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 675
    new-instance v0, Lcom/android/settings/wifi/bd;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->aDS:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/bd;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDN:Lcom/android/settings/wifi/bd;

    goto :goto_2

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/view/Menu;)V

    .line 380
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDV:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 225
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 226
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    .prologue
    const v3, 0x7f0c033e

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return v6

    .line 446
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 499
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 448
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 449
    goto :goto_0

    .line 465
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v6, v10

    .line 466
    goto :goto_0

    .line 468
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->AK()V

    move v6, v10

    .line 470
    goto :goto_0

    .line 472
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->yw()V

    :cond_1
    move v6, v10

    .line 475
    goto :goto_0

    .line 477
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/hn;

    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    const-class v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v6, v10

    .line 486
    goto :goto_0

    .line 482
    :cond_2
    const-class v0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 488
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/hn;

    if-eqz v0, :cond_3

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/hn;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c033f

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/hn;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v6, v10

    .line 497
    goto :goto_0

    .line 493
    :cond_3
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c033f

    move-object v4, p0

    move-object v5, p0

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDM:Lcom/android/settings/wifi/B;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDM:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->pause()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->AN()V

    .line 372
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 578
    instance-of v1, p2, Lcom/android/settings/wifi/a;

    if-eqz v1, :cond_3

    .line 579
    check-cast p2, Lcom/android/settings/wifi/a;

    invoke-virtual {p2}, Lcom/android/settings/wifi/a;->wP()Lcom/android/b/e/a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    .line 581
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AA()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AH()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 583
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AI()V

    .line 584
    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->aDI:Z

    if-nez v1, :cond_0

    .line 585
    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->aDI:Z

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->i(Landroid/net/wifi/WifiConfiguration;)V

    .line 599
    :goto_0
    return v0

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AH()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 590
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->aDQ:Z

    .line 591
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/b/e/a;Z)V

    goto :goto_0

    .line 593
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->aDQ:Z

    .line 594
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/b/e/a;Z)V

    goto :goto_0

    .line 597
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    .line 353
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 354
    const-string v0, "dummy"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->U(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDM:Lcom/android/settings/wifi/B;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDM:Lcom/android/settings/wifi/B;

    invoke-virtual {v0}, Lcom/android/settings/wifi/B;->resume()V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->startTracking()V

    .line 362
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 421
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 424
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBF:Lcom/android/settings/wifi/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBF:Lcom/android/settings/wifi/am;

    invoke-virtual {v0}, Lcom/android/settings/wifi/am;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDR:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    const-string v0, "modify_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDQ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBG:Lcom/android/b/e/a;

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBH:Landroid/os/Bundle;

    .line 429
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aBG:Lcom/android/b/e/a;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aBH:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/b/e/a;->k(Landroid/os/Bundle;)V

    .line 430
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aBH:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDN:Lcom/android/settings/wifi/bd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDN:Lcom/android/settings/wifi/bd;

    invoke-virtual {v0}, Lcom/android/settings/wifi/bd;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 436
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDN:Lcom/android/settings/wifi/bd;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/bd;->saveState(Landroid/os/Bundle;)V

    .line 437
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 439
    :cond_1
    return-void
.end method

.method public xA()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    const v0, 0x7f0c02fc

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dB(I)V

    goto :goto_0

    .line 697
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->je:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 699
    packed-switch v0, :pswitch_data_0

    .line 758
    :goto_1
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->aDI:Z

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v1}, Lcom/android/settings/wifi/L;->AR()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 759
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->aDI:Z

    if-nez v0, :cond_8

    :goto_2
    sput-boolean v4, Lcom/android/settings/wifi/WifiSettings;->aDI:Z

    .line 760
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 702
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->AO()Ljava/util/List;

    move-result-object v0

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 710
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/e/a;

    .line 712
    invoke-virtual {v0}, Lcom/android/b/e/a;->getLevel()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_9

    .line 714
    invoke-virtual {v0}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 715
    invoke-virtual {v0}, Lcom/android/b/e/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 716
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move v1, v3

    move v3, v4

    .line 718
    goto :goto_3

    .line 720
    :cond_4
    new-instance v6, Lcom/android/settings/wifi/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->aBI:Lcom/android/settings/wifi/c;

    invoke-direct {v6, v0, v3, v7, v2}, Lcom/android/settings/wifi/a;-><init>(Lcom/android/b/e/a;Landroid/content/Context;Lcom/android/settings/wifi/c;Z)V

    .line 722
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v6, v1}, Lcom/android/settings/wifi/a;->setOrder(I)V

    .line 724
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDU:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDU:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AB()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/android/b/e/a;->AH()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/b/e/a;->AA()I

    move-result v1

    if-eqz v1, :cond_5

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 728
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aDU:Ljava/lang/String;

    .line 730
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 731
    invoke-virtual {v0, p0}, Lcom/android/b/e/a;->a(Lcom/android/b/e/b;)V

    move v0, v3

    move v1, v4

    :goto_4
    move v3, v1

    move v1, v0

    .line 733
    goto :goto_3

    .line 734
    :cond_6
    if-nez v3, :cond_7

    .line 735
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->bL(Z)V

    .line 736
    const v0, 0x7f0c02fb

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dB(I)V

    goto/16 :goto_1

    .line 738
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->bL(Z)V

    goto/16 :goto_1

    .line 743
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 744
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->bL(Z)V

    goto/16 :goto_1

    .line 748
    :pswitch_2
    const v0, 0x7f0c02d6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dB(I)V

    .line 749
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->bL(Z)V

    goto/16 :goto_1

    .line 753
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->yu()V

    .line 754
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->bL(Z)V

    goto/16 :goto_1

    :cond_8
    move v4, v2

    .line 759
    goto/16 :goto_2

    :cond_9
    move v0, v1

    move v1, v3

    goto :goto_4

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method xC()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->AM()V

    .line 949
    const-string v0, "nearby_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 950
    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 953
    :cond_0
    return-void
.end method

.method public xz()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->bE(Z)V

    .line 860
    return-void
.end method

.method protected yt()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 769
    return-object v0
.end method

.method yv()V
    .locals 3

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 910
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->AH()Z

    move-result v0

    if-nez v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->Az()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v0}, Lcom/android/b/e/a;->Az()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->AB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/b/e/a;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 925
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->aDT:Lcom/android/settings/wifi/L;

    invoke-virtual {v0}, Lcom/android/settings/wifi/L;->AM()V

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->bE(Z)V

    .line 929
    :goto_1
    return-void

    .line 918
    :cond_0
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v2}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->je:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    invoke-virtual {v1}, Lcom/android/b/e/a;->wX()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->aDL:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method yw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 961
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->aAw:Lcom/android/b/e/a;

    .line 962
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/b/e/a;Z)V

    .line 963
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 416
    const/16 v0, 0x67

    return v0
.end method
