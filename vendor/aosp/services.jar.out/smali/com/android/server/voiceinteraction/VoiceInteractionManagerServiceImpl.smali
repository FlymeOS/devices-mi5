.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;


# static fields
.field static final CLOSE_REASON_VOICE_INTERACTION:Ljava/lang/String; = "voiceinteraction"

.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

.field final mAm:Landroid/app/IActivityManager;

.field mBound:Z

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mComponent:Landroid/content/ComponentName;

.field final mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field mDisabledShowContext:I

.field final mHandler:Landroid/os/Handler;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

.field final mLock:Ljava/lang/Object;

.field mService:Landroid/service/voice/IVoiceInteractionService;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field final mUser:I

.field final mValid:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;ILandroid/content/ComponentName;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "userHandle"    # I
    .param p5, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 71
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    .line 114
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 116
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 117
    iput p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 118
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 119
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    .line 122
    :try_start_0
    new-instance v2, Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-direct {v2, v3, p5, v4}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v2, "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 132
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 133
    const-string v3, "VoiceInteractionServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad voice interaction service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 135
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 136
    iput-boolean v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 147
    .end local v2    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/util/AndroidException;
    :goto_1
    const-string v3, "VoiceInteractionServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voice interaction service not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 126
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 127
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 128
    iput-boolean v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    goto :goto_0

    .line 139
    .end local v0    # "e":Landroid/util/AndroidException;
    .restart local v2    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 140
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 142
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v6, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 123
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public closeSystemDialogsLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v1, :cond_1

    .line 213
    :cond_0
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "closeSystemDialogs does not match active session"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    const-string v2, "voiceinteraction"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected remote error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_1

    .line 169
    :cond_0
    const-string v0, "VoiceInteractionServiceManager"

    const-string v1, "deliverNewSession does not match active session"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    if-nez v0, :cond_2

    .line 260
    const-string v0, "  NOT VALID: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-nez v0, :cond_1

    .line 262
    const-string v0, "no info"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_2
    const-string v0, "  mUser="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 269
    const-string v0, "  mComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    const-string v0, "  Session service="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    const-string v0, "  Service info:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "    "

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 273
    const-string v0, "  Application info:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "    "

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 275
    const-string v0, "  Recognition service="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    const-string v0, "  Settings activity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    const-string v0, "  Supports assist="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 278
    const-string v0, "  Supports launch from keyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 280
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    if-eqz v0, :cond_3

    .line 281
    const-string v0, "  mDisabledShowContext="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    :cond_3
    const-string v0, "  mBound="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "  Active session:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const-string v1, "    "

    invoke-virtual {v0, v1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public finishLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_1

    .line 224
    :cond_0
    const-string v0, "VoiceInteractionServiceManager"

    const-string v1, "finish does not match active session"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    goto :goto_0
.end method

.method public getDisabledShowContextLocked(I)I
    .locals 4
    .param p1, "callingUid"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 242
    .local v0, "activeUid":I
    if-eq p1, v0, :cond_0

    .line 243
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match active uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    return v1
.end method

.method public getUserDisabledShowContextLocked(I)I
    .locals 4
    .param p1, "callingUid"    # I

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 251
    .local v0, "activeUid":I
    if-eq p1, v0, :cond_0

    .line 252
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match active uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSessionLocked()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 4

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-nez v1, :cond_0

    .line 303
    const-string v1, "VoiceInteractionServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not bound to voice interaction service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->launchVoiceAssistFromKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "RemoteException while calling launchVoiceAssistFromKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method notifySoundModelsChangedLocked()V
    .locals 4

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-nez v1, :cond_0

    .line 339
    const-string v1, "VoiceInteractionServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not bound to voice interaction service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 343
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->soundModelsChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "RemoteException while calling soundModelsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;)V

    .line 353
    monitor-exit v1

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDisabledShowContextLocked(II)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "flags"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 233
    .local v0, "activeUid":I
    if-eq p1, v0, :cond_0

    .line 234
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match active uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_0
    iput p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    .line 238
    return-void
.end method

.method public setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keepAwake"    # Z

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v1, :cond_1

    .line 201
    :cond_0
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "setKeepAwake does not match active session"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1, v2, p2}, Landroid/app/IActivityManager;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected remote error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 8
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method shutdownLocked()V
    .locals 3

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked()V

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 321
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 330
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 332
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    if-eqz v1, :cond_3

    .line 333
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    :cond_3
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "RemoteException in shutdown"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startLocked()V
    .locals 6

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    const v3, 0x4000001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 296
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    if-nez v1, :cond_0

    .line 297
    const-string v1, "VoiceInteractionServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed binding to voice interaction service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    return-void
.end method

.method public startVoiceActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 14
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_1

    .line 180
    :cond_0
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "startVoiceActivity does not match active session"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, -0x6

    .line 190
    :goto_0
    return v1

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-nez v1, :cond_2

    .line 184
    const-string v1, "VoiceInteractionServiceManager"

    const-string v2, "startVoiceActivity not allowed on hidden session"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, -0x6

    goto :goto_0

    .line 187
    :cond_2
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local p4    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    :try_start_1
    const-string v1, "android.intent.category.VOICE"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const/high16 v1, 0x18000000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v7, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v8, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    move-object/from16 p4, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 193
    :catch_0
    move-exception v13

    .line 194
    .local v13, "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected remote error"

    invoke-direct {v1, v2, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 193
    .end local v13    # "e":Landroid/os/RemoteException;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v13

    move-object/from16 p4, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method
