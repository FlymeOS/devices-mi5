.class Lcom/android/vendorsettings/f;
.super Ljava/lang/Object;
.source "AccessControlSetApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic q:Lcom/android/vendorsettings/AccessControlSetApp;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/AccessControlSetApp;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/vendorsettings/f;->q:Lcom/android/vendorsettings/AccessControlSetApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/vendorsettings/f;->q:Lcom/android/vendorsettings/AccessControlSetApp;

    invoke-static {v0}, Lcom/android/vendorsettings/AccessControlSetApp;->b(Lcom/android/vendorsettings/AccessControlSetApp;)V

    .line 147
    return-void
.end method
