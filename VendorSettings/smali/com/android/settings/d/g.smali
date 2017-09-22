.class Lcom/android/vendorsettings/d/g;
.super Landroid/os/AsyncTask;
.source "NetworkPolicyEditor.java"


# instance fields
.field final synthetic ahX:[Landroid/net/NetworkPolicy;

.field final synthetic ahY:Lcom/android/vendorsettings/d/f;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/d/f;[Landroid/net/NetworkPolicy;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/vendorsettings/d/g;->ahY:Lcom/android/vendorsettings/d/f;

    iput-object p2, p0, Lcom/android/vendorsettings/d/g;->ahX:[Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/vendorsettings/d/g;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/vendorsettings/d/g;->ahY:Lcom/android/vendorsettings/d/f;

    iget-object v1, p0, Lcom/android/vendorsettings/d/g;->ahX:[Landroid/net/NetworkPolicy;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/d/f;->a([Landroid/net/NetworkPolicy;)V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method
