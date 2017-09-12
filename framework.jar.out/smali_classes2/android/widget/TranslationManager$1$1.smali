.class Landroid/widget/TranslationManager$1$1;
.super Ljava/lang/Object;
.source "TranslationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationManager$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TranslationManager$1;

.field final synthetic val$params:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/TranslationManager$1;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Landroid/widget/TranslationManager$1$1;->this$1:Landroid/widget/TranslationManager$1;

    iput-object p2, p0, Landroid/widget/TranslationManager$1$1;->val$params:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/TranslationManager$1$1;->this$1:Landroid/widget/TranslationManager$1;

    iget-object v0, v0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    invoke-static {p2}, Lcom/miui/translationservice/ITranslation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/translationservice/ITranslation;

    move-result-object v1

    # setter for: Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;
    invoke-static {v0, v1}, Landroid/widget/TranslationManager;->access$002(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)Lcom/miui/translationservice/ITranslation;

    .line 53
    iget-object v0, p0, Landroid/widget/TranslationManager$1$1;->this$1:Landroid/widget/TranslationManager$1;

    iget-object v0, v0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    iget-object v1, p0, Landroid/widget/TranslationManager$1$1;->val$params:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/widget/TranslationManager$1$1;->val$params:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Landroid/widget/TranslationManager$1$1;->val$params:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Landroid/widget/TranslationManager$1$1;->this$1:Landroid/widget/TranslationManager$1;

    iget-object v4, v4, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    # getter for: Landroid/widget/TranslationManager;->mRemoteCallback:Landroid/widget/TranslationManager$TranslationRemoteCallback;
    invoke-static {v4}, Landroid/widget/TranslationManager;->access$100(Landroid/widget/TranslationManager;)Landroid/widget/TranslationManager$TranslationRemoteCallback;

    move-result-object v4

    # invokes: Landroid/widget/TranslationManager;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/widget/TranslationManager;->access$200(Landroid/widget/TranslationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V

    .line 54
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/TranslationManager$1$1;->this$1:Landroid/widget/TranslationManager$1;

    iget-object v0, v0, Landroid/widget/TranslationManager$1;->this$0:Landroid/widget/TranslationManager;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;
    invoke-static {v0, v1}, Landroid/widget/TranslationManager;->access$002(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)Lcom/miui/translationservice/ITranslation;

    .line 59
    return-void
.end method
