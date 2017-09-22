.class public Lcom/android/settings/applications/AppStatePowerBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStatePowerBridge.java"


# static fields
.field public static final GF:Lcom/android/b/a/p;


# instance fields
.field private final GE:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/android/b/a/t;

    sget-object v1, Lcom/android/b/a/a;->aIt:Lcom/android/b/a/p;

    new-instance v2, Lcom/android/settings/applications/AppStatePowerBridge$1;

    invoke-direct {v2}, Lcom/android/settings/applications/AppStatePowerBridge$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/b/a/t;-><init>(Lcom/android/b/a/p;Lcom/android/b/a/p;)V

    sput-object v0, Lcom/android/settings/applications/AppStatePowerBridge;->GF:Lcom/android/b/a/p;

    return-void
.end method

.method public constructor <init>(Lcom/android/b/a/a;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/b/a/a;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 31
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->rf()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStatePowerBridge;->GE:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Lcom/android/b/a/o;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/applications/AppStatePowerBridge;->GE:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    .line 51
    return-void

    .line 50
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected jM()V
    .locals 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/applications/AppStatePowerBridge;->Gs:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->zo()Ljava/util/ArrayList;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 41
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 42
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 43
    iget-object v1, p0, Lcom/android/settings/applications/AppStatePowerBridge;->GE:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    iget-object v5, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    iput-object v1, v0, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    .line 41
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 43
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 46
    :cond_1
    return-void
.end method
