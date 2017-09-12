.class Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "Keyguard.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/securespaces/Keyguard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/securespaces/Keyguard;


# direct methods
.method private constructor <init>(Lcom/android/server/securespaces/Keyguard;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;->this$0:Lcom/android/server/securespaces/Keyguard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/securespaces/Keyguard;Lcom/android/server/securespaces/Keyguard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/securespaces/Keyguard;
    .param p2, "x1"    # Lcom/android/server/securespaces/Keyguard$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;-><init>(Lcom/android/server/securespaces/Keyguard;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 48
    const-string v0, "ssm.Keyguard"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;->this$0:Lcom/android/server/securespaces/Keyguard;

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/securespaces/Keyguard;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 50
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 53
    const-string v0, "ssm.Keyguard"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/server/securespaces/Keyguard$RemoteServiceConnection;->this$0:Lcom/android/server/securespaces/Keyguard;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/securespaces/Keyguard;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 55
    return-void
.end method
