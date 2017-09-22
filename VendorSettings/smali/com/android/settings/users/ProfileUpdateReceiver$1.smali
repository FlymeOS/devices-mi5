.class Lcom/android/vendorsettings/users/ProfileUpdateReceiver$1;
.super Ljava/lang/Thread;
.source "ProfileUpdateReceiver.java"


# instance fields
.field final synthetic atW:Lcom/android/vendorsettings/users/ProfileUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/users/ProfileUpdateReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/vendorsettings/users/ProfileUpdateReceiver$1;->atW:Lcom/android/vendorsettings/users/ProfileUpdateReceiver;

    iput-object p2, p0, Lcom/android/vendorsettings/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vendorsettings/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vendorsettings/iC;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    .line 41
    iget-object v0, p0, Lcom/android/vendorsettings/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vendorsettings/users/ProfileUpdateReceiver;->ck(Landroid/content/Context;)V

    .line 42
    return-void
.end method
