.class public Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;
.super Lcom/android/vendorsettings/ac;
.source "MiuiVpnEnable.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final avP:Landroid/net/NetworkRequest;


# instance fields
.field private TAG:Ljava/lang/String;

.field private avK:Lcom/android/internal/net/VpnProfile;

.field private avL:Z

.field private avM:Z

.field private avN:Landroid/net/ConnectivityManager;

.field avO:Landroid/app/AppOpsManager$PackageOps;

.field private avQ:Landroid/os/Handler;

.field private avR:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private tj:Lcom/android/vendorsettings/vpn2/VpnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avP:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p2, p3}, Lcom/android/vendorsettings/ac;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    .line 28
    const-string v0, "MiuiVpnEnable"

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable$1;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable$1;-><init>(Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 71
    iput-object p1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->mActivity:Landroid/app/Activity;

    .line 73
    new-instance v0, Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-direct {v0, p1}, Lcom/android/vendorsettings/vpn2/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    .line 74
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avN:Landroid/net/ConnectivityManager;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avQ:Landroid/os/Handler;

    return-object v0
.end method

.method private dh(I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->mTitle:Landroid/widget/TextView;

    if-ne v3, p1, :cond_3

    const v0, 0x7f0c1103

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->co:Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_2

    .line 130
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->co:Lmiui/widget/SlidingButton;

    const/4 v0, 0x3

    if-eq v0, p1, :cond_1

    if-eq v3, p1, :cond_1

    if-ne v1, p1, :cond_4

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 134
    :cond_2
    return-void

    .line 125
    :cond_3
    const v0, 0x7f0c07de

    goto :goto_0

    .line 130
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private stopMonitor()V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avL:Z

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->TAG:Ljava/lang/String;

    const-string v1, "stop monitor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avN:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 193
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avQ:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avQ:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 197
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avL:Z

    goto :goto_0
.end method

.method private vI()V
    .locals 3

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avL:Z

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->TAG:Ljava/lang/String;

    const-string v1, "start monitor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avN:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avP:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avR:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 177
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avQ:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avQ:Landroid/os/Handler;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avQ:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avL:Z

    goto :goto_0
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avQ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->vS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->dh(I)V

    .line 114
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avQ:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avM:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avO:Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avO:Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 144
    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-eqz p2, :cond_2

    .line 149
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v1}, Lcom/android/vendorsettings/vpn2/VpnManager;->vS()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avK:Lcom/android/internal/net/VpnProfile;

    iget-object v2, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/vpn2/VpnManager;->a(Lcom/android/internal/net/VpnProfile;Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->TAG:Ljava/lang/String;

    const-string v2, "Failed to connect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avK:Lcom/android/internal/net/VpnProfile;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avK:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->co:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->stopMonitor()V

    .line 106
    return-void
.end method

.method protected update()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    new-array v1, v3, [I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/vpn2/VpnManager;->d([I)Ljava/util/List;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v1}, Lcom/android/vendorsettings/vpn2/VpnManager;->vR()Ljava/util/List;

    move-result-object v1

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v4, v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avK:Lcom/android/internal/net/VpnProfile;

    .line 84
    iput-boolean v3, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avM:Z

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->tj:Lcom/android/vendorsettings/vpn2/VpnManager;

    invoke-virtual {v0}, Lcom/android/vendorsettings/vpn2/VpnManager;->vS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->dh(I)V

    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->co:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    invoke-direct {p0}, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->vI()V

    .line 100
    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 86
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    iput-object v0, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avO:Landroid/app/AppOpsManager$PackageOps;

    .line 87
    iput-boolean v4, p0, Lcom/android/vendorsettings/vpn2/MiuiVpnEnable;->avM:Z

    goto :goto_0
.end method
