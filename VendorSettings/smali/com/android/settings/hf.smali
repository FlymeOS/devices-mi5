.class Lcom/android/settings/hf;
.super Landroid/os/AsyncTask;
.source "SearchUpdator.java"


# instance fields
.field final synthetic yG:Lcom/android/settings/hd;


# direct methods
.method private constructor <init>(Lcom/android/settings/hd;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/hf;->yG:Lcom/android/settings/hd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/hd;Lcom/android/settings/he;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/hf;-><init>(Lcom/android/settings/hd;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/hf;->yG:Lcom/android/settings/hd;

    iget-object v1, p0, Lcom/android/settings/hf;->yG:Lcom/android/settings/hd;

    invoke-static {v1}, Lcom/android/settings/hd;->a(Lcom/android/settings/hd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/hd;->a(Lcom/android/settings/hd;Landroid/content/Context;)V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/settings/hf;->a([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
