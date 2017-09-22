.class Lcom/android/vendorsettings/bb;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gu:Lcom/android/vendorsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/vendorsettings/bb;->gu:Lcom/android/vendorsettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/vendorsettings/bb;->gu:Lcom/android/vendorsettings/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vendorsettings/CryptKeeper;->a(Lcom/android/vendorsettings/CryptKeeper;Ljava/lang/Integer;)V

    .line 155
    return-void
.end method
