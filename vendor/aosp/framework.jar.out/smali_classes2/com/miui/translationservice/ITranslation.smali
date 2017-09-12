.class public interface abstract Lcom/miui/translationservice/ITranslation;
.super Ljava/lang/Object;
.source "ITranslation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/ITranslation$Stub;
    }
.end annotation


# virtual methods
.method public abstract translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
