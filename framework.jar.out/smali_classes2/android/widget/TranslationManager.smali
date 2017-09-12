.class Landroid/widget/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TranslationManager$TranslationRemoteCallback;
    }
.end annotation


# static fields
.field static final MSG_QUERY_FAIL:I = 0x1

.field static final MSG_QUERY_SUCCESS:I = 0x0

.field private static final TRANSLATION_SERVICE_CLASS:Ljava/lang/String; = "com.miui.translationservice.TranslationService"

.field private static final TRANSLATION_SERVICE_PACKAGE:Ljava/lang/String; = "com.miui.translationservice"


# instance fields
.field private mBindServiceTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRemoteCallback:Landroid/widget/TranslationManager$TranslationRemoteCallback;

.field private mService:Lcom/miui/translationservice/ITranslation;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    .line 35
    iput-object v0, p0, Landroid/widget/TranslationManager;->mRemoteCallback:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    .line 37
    iput-object v0, p0, Landroid/widget/TranslationManager;->mBindServiceTask:Landroid/os/AsyncTask;

    .line 40
    iput-object p1, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Landroid/widget/TranslationManager$1;

    invoke-direct {v0, p0}, Landroid/widget/TranslationManager$1;-><init>(Landroid/widget/TranslationManager;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mBindServiceTask:Landroid/os/AsyncTask;

    .line 70
    return-void
.end method

.method static synthetic access$002(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)Lcom/miui/translationservice/ITranslation;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationManager;
    .param p1, "x1"    # Lcom/miui/translationservice/ITranslation;

    .prologue
    .line 25
    iput-object p1, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/TranslationManager;)Landroid/widget/TranslationManager$TranslationRemoteCallback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationManager;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/widget/TranslationManager;->mRemoteCallback:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TranslationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/miui/translationservice/ITranslationRemoteCallback;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TranslationManager;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TranslationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationManager;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TranslationManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TranslationManager;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/TranslationManager;->onTranslationFailed()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/TranslationManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TranslationManager;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onTranslationFailed()V
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 103
    return-void
.end method

.method private translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "word"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/miui/translationservice/ITranslationRemoteCallback;

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    iget-object v2, p0, Landroid/widget/TranslationManager;->mRemoteCallback:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/miui/translationservice/ITranslation;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    invoke-direct {p0}, Landroid/widget/TranslationManager;->onTranslationFailed()V

    goto :goto_0
.end method


# virtual methods
.method isAvailable()Z
    .locals 2

    .prologue
    .line 86
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/widget/TranslationManager;->mRemoteCallback:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/widget/TranslationManager;->mRemoteCallback:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    invoke-virtual {v0}, Landroid/widget/TranslationManager$TranslationRemoteCallback;->cancel()V

    .line 76
    :cond_0
    new-instance v0, Landroid/widget/TranslationManager$TranslationRemoteCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TranslationManager$TranslationRemoteCallback;-><init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$1;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mRemoteCallback:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    .line 78
    iget-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Landroid/widget/TranslationManager;->mRemoteCallback:Landroid/widget/TranslationManager$TranslationRemoteCallback;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TranslationManager;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Landroid/widget/TranslationManager;->mBindServiceTask:Landroid/os/AsyncTask;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
