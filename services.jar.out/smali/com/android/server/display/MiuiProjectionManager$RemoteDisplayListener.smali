.class Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;
.super Ljava/lang/Object;
.source "MiuiProjectionManager.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiProjectionManager;


# direct methods
.method private constructor <init>(Lcom/android/server/display/MiuiProjectionManager;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/MiuiProjectionManager;
    .param p2, "x1"    # Lcom/android/server/display/MiuiProjectionManager$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;-><init>(Lcom/android/server/display/MiuiProjectionManager;)V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 10
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string v1, "MIUI_PROJECTION"

    const-string v2, "remote display connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    sget-object v2, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_CONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    # setter for: Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;
    invoke-static {v1, v2}, Lcom/android/server/display/MiuiProjectionManager;->access$302(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$State;)Lcom/android/server/display/MiuiProjectionManager$State;

    .line 135
    iget-object v1, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    # getter for: Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v1}, Lcom/android/server/display/MiuiProjectionManager;->access$400(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v1

    const-string v2, "mRemoteDisplayConnected"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    const-string v1, "02:0e:55:53:62:34"

    const-string v2, "miui-projection"

    const/4 v3, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 139
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v1, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    # getter for: Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v1}, Lcom/android/server/display/MiuiProjectionManager;->access$400(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v1

    const-string v2, "advertiseDisplay"

    const-class v3, Ljava/lang/Void;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object p1, v5, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    const/4 v7, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v1, v2, v3, v5}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 141
    const-string v1, "MIUI_PROJECTION"

    const-string v2, "virtual display metrics:  wxh = %d x %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_0
    return-void
.end method

.method public onDisplayDisconnected()V
    .locals 3

    .prologue
    .line 147
    const-string v0, "MIUI_PROJECTION"

    const-string v1, "remote display disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    # getter for: Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/MiuiProjectionManager;->access$400(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    const-string v1, "mRemoteDisplayConnected"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjection()V

    .line 150
    return-void
.end method

.method public onDisplayError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjection()V

    .line 155
    return-void
.end method

.method public onDisplayGenericMsgEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 158
    const-string v0, "MIUI_PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayGenericMsgEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public onDisplayKeyEvent(II)V
    .locals 3
    .param p1, "uniCode"    # I
    .param p2, "flags"    # I

    .prologue
    .line 162
    const-string v0, "MIUI_PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
