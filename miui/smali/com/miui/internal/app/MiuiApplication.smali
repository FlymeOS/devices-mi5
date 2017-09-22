.class public Lcom/miui/internal/app/MiuiApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static final PREF_KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field public static final PUBLIC_PREFERENCE_NAME:Ljava/lang/String; = "public"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    .line 29
    return-void
.end method
