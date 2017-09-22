.class Lcom/android/vendorsettings/users/UserSettings$13;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# instance fields
.field final synthetic auA:Lcom/android/vendorsettings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/users/UserSettings;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/vendorsettings/users/UserSettings$13;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 878
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 879
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings$13;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/users/UserSettings;->d(Lcom/android/vendorsettings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 880
    if-nez v0, :cond_0

    .line 881
    invoke-static {v2}, Lcom/android/vendorsettings/iC;->as(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 883
    :cond_0
    iget-object v3, p0, Lcom/android/vendorsettings/users/UserSettings$13;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-static {v3}, Lcom/android/vendorsettings/users/UserSettings;->b(Lcom/android/vendorsettings/users/UserSettings;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 885
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 870
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/users/UserSettings$13;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 870
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/users/UserSettings$13;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/vendorsettings/users/UserSettings$13;->auA:Lcom/android/vendorsettings/users/UserSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/users/UserSettings;->a(Lcom/android/vendorsettings/users/UserSettings;)V

    .line 874
    return-void
.end method
