.class Lcom/android/vendorsettings/display/m;
.super Landroid/os/AsyncTask;
.source "FontStatusController.java"


# instance fields
.field final synthetic Yn:Lcom/android/vendorsettings/display/k;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/display/k;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/vendorsettings/display/m;->Yn:Lcom/android/vendorsettings/display/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/display/k;Lcom/android/vendorsettings/display/l;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/display/m;-><init>(Lcom/android/vendorsettings/display/k;)V

    return-void
.end method


# virtual methods
.method protected aW(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vendorsettings/display/m;->Yn:Lcom/android/vendorsettings/display/k;

    invoke-static {v0}, Lcom/android/vendorsettings/display/k;->b(Lcom/android/vendorsettings/display/k;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 51
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/vendorsettings/display/m;->Yn:Lcom/android/vendorsettings/display/k;

    invoke-static {v0}, Lcom/android/vendorsettings/display/k;->c(Lcom/android/vendorsettings/display/k;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/display/m;->Yn:Lcom/android/vendorsettings/display/k;

    invoke-static {v0}, Lcom/android/vendorsettings/display/k;->d(Lcom/android/vendorsettings/display/k;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/display/m;->Yn:Lcom/android/vendorsettings/display/k;

    invoke-static {v0}, Lcom/android/vendorsettings/display/k;->e(Lcom/android/vendorsettings/display/k;)Lcom/android/vendorsettings/ah;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vendorsettings/display/m;->Yn:Lcom/android/vendorsettings/display/k;

    invoke-static {v0}, Lcom/android/vendorsettings/display/k;->f(Lcom/android/vendorsettings/display/k;)Lcom/android/vendorsettings/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/vendorsettings/ah;->l(Ljava/lang/String;)V

    .line 55
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/display/m;->h([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs h([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/vendorsettings/display/m;->Yn:Lcom/android/vendorsettings/display/k;

    invoke-static {v0}, Lcom/android/vendorsettings/display/k;->a(Lcom/android/vendorsettings/display/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/display/FontFragment;->bg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/display/m;->aW(Ljava/lang/String;)V

    return-void
.end method
